////////////////////////////////////////////////////////////////////////////////////////
//                            TERRAFORM PROVIDERS & BACKEND
////////////////////////////////////////////////////////////////////////////////////////
terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.28"
    }
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}
terraform {
  backend "s3" {
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    endpoints                   = { s3 = "https://fra1.digitaloceanspaces.com" }
    skip_requesting_account_id  = true
    skip_s3_checksum            = true
    region                      = "us-east-1"
    bucket                      = "merge-testnets"
    key                         = "infrastructure/devnet-5/hive/terraform.tfstate"
  }
}
provider "digitalocean" {
  http_retry_max = 20
}
provider "cloudflare" {
  api_token = var.cloudflare_api_token
}
////////////////////////////////////////////////////////////////////////////////////////
//                                        VARIABLES
////////////////////////////////////////////////////////////////////////////////////////
variable "cloudflare_api_token" {
  type        = string
  sensitive   = true
  description = "Cloudflare API Token"
}
variable "ethereum_network" {
  type    = string
  default = "pectra-devnet-5"
}
variable "digitalocean_project_name" {
  type    = string
  default = "Public Testnets"
}
variable "digitalocean_ssh_key_name" {
  type    = string
  default = "shared-devops-eth2"
}
variable "digitalocean_region" {
  type    = string
  default = "ams3"
}
////////////////////////////////////////////////////////////////////////////////////////
//                                  DIGITALOCEAN RESOURCES
////////////////////////////////////////////////////////////////////////////////////////
data "digitalocean_project" "main" {
  name = var.digitalocean_project_name
}
data "digitalocean_ssh_key" "main" {
  name = var.digitalocean_ssh_key_name
}
resource "digitalocean_droplet" "main" {
  name        = "${var.ethereum_network}-hive-1"
  region      = var.digitalocean_region
  ssh_keys    = [data.digitalocean_ssh_key.main.fingerprint]
  image       = "debian-12-x64"
  size        = "c2-8vcpu-16gb"
  resize_disk = true
  monitoring  = true
  backups     = false
  ipv6        = true
  tags = [
    "Hive:${var.ethereum_network}"
  ]
}
resource "digitalocean_project_resources" "droplets" {
  project   = data.digitalocean_project.main.id
  resources = [digitalocean_droplet.main.urn]
}
resource "digitalocean_firewall" "main" {
  name = "${var.ethereum_network}-hive"
  // Tags are used to select which droplets should
  // be assigned to this firewall.
  tags = [
    "Hive:${var.ethereum_network}"
  ]
  // SSH
  inbound_rule {
    protocol         = "tcp"
    port_range       = "22"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }
  // Nginx / Web
  inbound_rule {
    protocol         = "tcp"
    port_range       = "80"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }
  inbound_rule {
    protocol         = "tcp"
    port_range       = "443"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }
  // Allow all outbound traffic
  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
  outbound_rule {
    protocol              = "udp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }
  depends_on = [digitalocean_project_resources.droplets]
}
////////////////////////////////////////////////////////////////////////////////////////
//                                   DNS NAMES
////////////////////////////////////////////////////////////////////////////////////////
data "cloudflare_zone" "default" {
  name = "ethpandaops.io"
}
resource "cloudflare_record" "server_record_v4" {
  zone_id = data.cloudflare_zone.default.id
  name    = "hive.${var.ethereum_network}"
  type    = "A"
  value   = digitalocean_droplet.main.ipv4_address
  proxied = false
  ttl     = 120
}
////////////////////////////////////////////////////////////////////////////////////////
//                          GENERATED FILES AND OUTPUTS
////////////////////////////////////////////////////////////////////////////////////////
resource "local_file" "ansible_inventory" {
  depends_on = [digitalocean_droplet.main]
  content = templatefile("ansible_inventory.tmpl",
    {
      ethereum_network_name = "${var.ethereum_network}"
      hostname              = "${digitalocean_droplet.main.name}"
      ipv4                  = "${digitalocean_droplet.main.ipv4_address}"
      cloud                 = "digitalocean"
      region                = "${var.digitalocean_region}"
    }
  )
  filename = "../../../ansible/inventories/devnet-5/hive_inventory.ini"
}