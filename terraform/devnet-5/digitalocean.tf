////////////////////////////////////////////////////////////////////////////////////////
//                                        VARIABLES
////////////////////////////////////////////////////////////////////////////////////////
variable "digitalocean_project_name" {
  type    = string
  default = "Pectra-devnets"
}

variable "digitalocean_ssh_key_name" {
  type    = string
  default = "shared-devops-eth2"
}

variable "digitalocean_regions" {
  default = [
    "fra1",
    "ams3",
    "lon1",
    "blr1",
    "sfo3",
    "syd1"
  ]
}

////////////////////////////////////////////////////////////////////////////////////////
//                                        LOCALS
////////////////////////////////////////////////////////////////////////////////////////
locals {
  base_cidr_block = var.base_cidr_block
  digitalocean_vpcs = {
    for region in var.digitalocean_regions : region => {
      name     = "${var.ethereum_network}-${region}"
      region   = region
      ip_range = cidrsubnet(local.base_cidr_block, 8, index(var.digitalocean_regions, region))
    }
  }
}

locals {
  digitalocean_vm_groups = flatten([
    for vm_group in local.vm_groups :
    [
      for i in range(0, vm_group.count) : {
        group_name = "${vm_group.name}"
        id         = "${vm_group.name}-${i + 1}"
        vms = {
          "${i + 1}" = {
            tags   = "group_name:${vm_group.name},val_start:${vm_group.validator_start + ceil(i * (vm_group.validator_end - vm_group.validator_start) / vm_group.count)},val_end:${min(vm_group.validator_start + ceil((i + 1) * (vm_group.validator_end - vm_group.validator_start) / vm_group.count), vm_group.validator_end)}"
            region = element(var.digitalocean_regions, i % length(var.digitalocean_regions))
            size   = try(vm_group.size, local.digitalocean_default_size)
            ipv6   = try(vm_group.ipv6, true)
          }
        }
      }
    ]
  ])
}

locals {
  digitalocean_default_region = "ams3"
  digitalocean_default_size   = "s-4vcpu-8gb-240gb-intel"
  digitalocean_default_image  = "debian-12-x64"
  digitalocean_global_tags = [
    "Owner:Devops",
    "EthNetwork:${var.ethereum_network}"
  ]

  # flatten vm_groups so that we can use it with for_each()
  digitalocean_vms = flatten([
    for group in local.digitalocean_vm_groups : [
      for vm_key, vm in group.vms : {
        id        = "${group.id}"
        group_key = "${group.group_name}"
        vm_key    = vm_key

        name         = try(vm.name, "${group.id}")
        ssh_keys     = try(vm.ssh_keys, [data.digitalocean_ssh_key.main.fingerprint])
        region       = try(vm.region, try(group.region, local.digitalocean_default_region))
        image        = try(vm.image, local.digitalocean_default_image)
        size         = try(vm.size, local.digitalocean_default_size)
        resize_disk  = try(vm.resize_disk, true)
        monitoring   = try(vm.monitoring, true)
        backups      = try(vm.backups, false)
        ipv6         = try(vm.ipv6, true)
        ansible_vars = try(vm.ansible_vars, null)
        vpc_uuid = try(vm.vpc_uuid, try(
          digitalocean_vpc.main[vm.region].id,
          digitalocean_vpc.main[try(group.region, local.digitalocean_default_region)].id
        ))

        tags = concat(local.digitalocean_global_tags, try(split(",", group.tags), []), try(split(",", vm.tags), []))
      }
    ]
  ])
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

resource "digitalocean_vpc" "main" {
  for_each = local.digitalocean_vpcs

  name     = each.value["name"]
  region   = each.value["region"]
  ip_range = each.value["ip_range"]
}

resource "digitalocean_droplet" "main" {
  for_each = {
    for vm in local.digitalocean_vms : "${vm.id}" => vm
  }
  name        = "${var.ethereum_network}-${each.value.name}"
  region      = each.value.region
  ssh_keys    = each.value.ssh_keys
  image       = each.value.image
  size        = each.value.size
  resize_disk = each.value.resize_disk
  monitoring  = each.value.monitoring
  backups     = each.value.backups
  ipv6        = each.value.ipv6
  vpc_uuid    = each.value.vpc_uuid
  tags        = each.value.tags
}

resource "digitalocean_project_resources" "droplets" {
  for_each  = digitalocean_droplet.main
  project   = data.digitalocean_project.main.id
  resources = [each.value.urn]
}

resource "digitalocean_firewall" "main" {
  name = "${var.ethereum_network}-nodes"
  // Tags are used to select which droplets should
  // be assigned to this firewall.
  tags = [
    "EthNetwork:${var.ethereum_network}"
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

  // Consensus layer p2p port
  inbound_rule {
    protocol         = "tcp"
    port_range       = "9000-9001"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }
  inbound_rule {
    protocol         = "udp"
    port_range       = "9000-9001"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "udp"
    port_range       = "28545"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol         = "tcp"
    port_range       = "28545"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }

  // Execution layer p2p Port
  inbound_rule {
    protocol         = "tcp"
    port_range       = "30303"
    source_addresses = ["0.0.0.0/0", "::/0"]
  }
  inbound_rule {
    protocol         = "udp"
    port_range       = "30303"
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
  for_each = {
    for vm in local.digitalocean_vms : "${vm.id}" => vm
  }
  zone_id = data.cloudflare_zone.default.id
  name    = "${each.value.name}.${var.ethereum_network}"
  type    = "A"
  value   = digitalocean_droplet.main[each.value.id].ipv4_address
  proxied = false
  ttl     = 120
}

resource "cloudflare_record" "server_record_v6" {
  for_each = {
    for vm in local.digitalocean_vms : "${vm.id}" => vm if vm.ipv6
  }
  zone_id = data.cloudflare_zone.default.id
  name    = "${each.value.name}.${var.ethereum_network}"
  type    = "AAAA"
  value   = digitalocean_droplet.main[each.value.id].ipv6_address
  proxied = false
  ttl     = 120
}

resource "cloudflare_record" "server_record_rpc_v4" {
  for_each = {
    for vm in local.digitalocean_vms : "${vm.id}" => vm
  }
  zone_id = data.cloudflare_zone.default.id
  name    = "rpc.${each.value.name}.${var.ethereum_network}"
  type    = "A"
  value   = digitalocean_droplet.main[each.value.id].ipv4_address
  proxied = false
  ttl     = 120
}

resource "cloudflare_record" "server_record_rpc_v6" {
  for_each = {
    for vm in local.digitalocean_vms : "${vm.id}" => vm if vm.ipv6
  }
  zone_id = data.cloudflare_zone.default.id
  name    = "rpc.${each.value.name}.${var.ethereum_network}"
  type    = "AAAA"
  value   = digitalocean_droplet.main[each.value.id].ipv6_address
  proxied = false
  ttl     = 120
}

resource "cloudflare_record" "server_record_beacon_v4" {
  for_each = {
    for vm in local.digitalocean_vms : "${vm.id}" => vm
  }
  zone_id = data.cloudflare_zone.default.id
  name    = "bn.${each.value.name}.${var.ethereum_network}"
  type    = "A"
  value   = digitalocean_droplet.main[each.value.id].ipv4_address
  proxied = false
  ttl     = 120
}

resource "cloudflare_record" "server_record_beacon_v6" {
  for_each = {
    for vm in local.digitalocean_vms : "${vm.id}" => vm if vm.ipv6
  }
  zone_id = data.cloudflare_zone.default.id
  name    = "bn.${each.value.name}.${var.ethereum_network}"
  type    = "AAAA"
  value   = digitalocean_droplet.main[each.value.id].ipv6_address
  proxied = false
  ttl     = 120
}

resource "cloudflare_record" "server_record_xatu_v4" {
  for_each = {
    for vm in local.digitalocean_vms : "${vm.id}" => vm if contains(vm.tags, "group_name:xatu")
  }
  zone_id = data.cloudflare_zone.default.id
  name    = "xatu.${var.ethereum_network}"
  type    = "A"
  value   = digitalocean_droplet.main[each.value.id].ipv4_address
  proxied = false
  ttl     = 120
}

resource "cloudflare_record" "xatu-server" {
  zone_id = data.cloudflare_zone.default.id
  name    = "server.xatu.${var.ethereum_network}"
  type    = "CNAME"
  value   = "xatu.${var.ethereum_network}.ethpandaops.io"
  proxied = false
  ttl     = 120
}

resource "cloudflare_record" "xatu-wildcard" {
  zone_id = data.cloudflare_zone.default.id
  name    = "*.xatu.${var.ethereum_network}"
  type    = "CNAME"
  value   = "xatu.${var.ethereum_network}.ethpandaops.io"
  proxied = true
  ttl     = 1
}


////////////////////////////////////////////////////////////////////////////////////////
//                          GENERATED FILES AND OUTPUTS
////////////////////////////////////////////////////////////////////////////////////////

resource "local_file" "ansible_inventory" {
  content = templatefile("ansible_inventory.tmpl",
    {
      ethereum_network_name = "${var.ethereum_network}"
      groups = merge(
        { for group in local.digitalocean_vm_groups : "${group.group_name}" => true... },
      )
      hosts = merge(
        {
          for key, server in digitalocean_droplet.main : "do.${key}" => {
            ip              = "${server.ipv4_address}"
            ipv6            = try(server.ipv6_address, "none")
            group           = try(split(":", tolist(server.tags)[2])[1], "unknown")
            validator_start = try(split(":", tolist(server.tags)[4])[1], 0)
            validator_end   = try(split(":", tolist(server.tags)[3])[1], 0) # if the tag is not a number it will be 0 - e.g no validator keys
            tags            = "${server.tags}"
            hostname        = "${split(".", key)[0]}"
            cloud           = "digitalocean"
            region          = "${server.region}"
          }
        }
      )
    }
  )
  filename = "../../ansible/inventories/devnet-5/inventory.ini"
}
