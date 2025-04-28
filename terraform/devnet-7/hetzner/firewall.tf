resource "hcloud_firewall" "machine_firewall" {
  name = "${var.ethereum_network}-firewall"

  # SSH
  rule {
    description = "Allow SSH"
    direction   = "in"
    protocol    = "tcp"
    port        = "22"
    source_ips  = ["0.0.0.0/0", "::/0"]
  }
  # Nginx / Web
  rule {
    description = "Allow HTTP"
    direction   = "in"
    protocol    = "tcp"
    port        = "80"
    source_ips  = ["0.0.0.0/0", "::/0"]
  }

  rule {
    description = "Allow HTTPS"
    direction   = "in"
    protocol    = "tcp"
    port        = "443"
    source_ips  = ["0.0.0.0/0", "::/0"]
  }

  # Consensus layer p2p port
  rule {
    description = "Allow consensus p2p port TCP"
    direction   = "in"
    protocol    = "tcp"
    port        = "9000-9001"
    source_ips  = ["0.0.0.0/0", "::/0"]
  }

  rule {
    description = "Allow consensus p2p port UDP"
    direction   = "in"
    protocol    = "udp"
    port        = "9000-9001"
    source_ips  = ["0.0.0.0/0", "::/0"]
  }

  # Execution layer p2p Port
  rule {
    description = "Allow execution p2p port TCP"
    direction   = "in"
    protocol    = "tcp"
    port        = "30303"
    source_ips  = ["0.0.0.0/0", "::/0"]
  }

  rule {
    description = "Allow execution p2p port UDP"
    direction   = "in"
    protocol    = "udp"
    port        = "30303"
    source_ips  = ["0.0.0.0/0", "::/0"]
  }

  # Allow all outbound traffic
  rule {
    description     = "Allow all outbound traffic TCP"
    direction       = "out"
    protocol        = "tcp"
    port            = "1-65535"
    destination_ips = ["0.0.0.0/0", "::/0"]
  }

  rule {
    description     = "Allow all outbound traffic UDP"
    direction       = "out"
    protocol        = "udp"
    port            = "1-65535"
    destination_ips = ["0.0.0.0/0", "::/0"]
  }

  rule {
    description     = "Allow all outbound traffic ICMP"
    direction       = "out"
    protocol        = "icmp"
    destination_ips = ["0.0.0.0/0", "::/0"]
  }
}

