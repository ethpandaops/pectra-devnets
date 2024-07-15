# Bootnode
variable "bootnode" {
  default = {
    name            = "bootnode"
    count           = 1
    validator_start = 0
    validator_end   = 0
  }
}

# mev-relay
variable "mev_relay" {
  default = {
    name            = "mev-relay"
    count           = 2
    validator_start = 0
    validator_end   = 0
    size            = "s-4vcpu-16gb-320gb-intel"
  }
}

# Lighthouse
variable "lighthouse_geth" {
  default = {
    name            = "lighthouse-geth"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "lighthouse_besu" {
  default = {
    name            = "lighthouse-besu"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "lighthouse_nethermind" {
  default = {
    name            = "lighthouse-nethermind"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "lighthouse_ethereumjs" {
  default = {
    name            = "lighthouse-ethereumjs"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "lighthouse_erigon" {
  default = {
    name            = "lighthouse-erigon"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "lighthouse_reth" {
  default = {
    name            = "lighthouse-reth"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

# Prysm
variable "prysm_geth" {
  default = {
    name            = "prysm-geth"
    count           = 1
    validator_start = 0
    validator_end   = 100
  }
}

variable "prysm_besu" {
  default = {
    name            = "prysm-besu"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "prysm_nethermind" {
  default = {
    name            = "prysm-nethermind"
    count           = 1
    validator_start = 100
    validator_end   = 200
  }
}

variable "prysm_ethereumjs" {
  default = {
    name            = "prysm-ethereumjs"
    count           = 1
    validator_start = 200
    validator_end   = 250
  }
}

variable "prysm_erigon" {
  default = {
    name            = "prysm-erigon"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "prysm_reth" {
  default = {
    name            = "prysm-reth"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

# Lodestar
variable "lodestar_geth" {
  default = {
    name            = "lodestar-geth"
    count           = 1
    validator_start = 250
    validator_end   = 350
  }
}

variable "lodestar_nethermind" {
  default = {
    name            = "lodestar-nethermind"
    count           = 1
    validator_start = 350
    validator_end   = 450
  }
}

variable "lodestar_besu" {
  default = {
    name            = "lodestar-besu"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "lodestar_ethereumjs" {
  default = {
    name            = "lodestar-ethereumjs"
    count           = 1
    validator_start = 450
    validator_end   = 500
  }
}

variable "lodestar_erigon" {
  default = {
    name            = "lodestar-erigon"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "lodestar_reth" {
  default = {
    name            = "lodestar-reth"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

# Nimbus
variable "nimbus_geth" {
  default = {
    name            = "nimbus-geth"
    count           = 1
    validator_start = 500
    validator_end   = 600
  }
}

variable "nimbus_besu" {
  default = {
    name            = "nimbus-besu"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "nimbus_nethermind" {
  default = {
    name            = "nimbus-nethermind"
    count           = 1
    validator_start = 600
    validator_end   = 700
  }
}

variable "nimbus_ethereumjs" {
  default = {
    name            = "nimbus-ethereumjs"
    count           = 1
    validator_start = 700
    validator_end   = 750
  }
}

variable "nimbus_erigon" {
  default = {
    name            = "nimbus-erigon"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "nimbus_reth" {
  default = {
    name            = "nimbus-reth"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

# Teku
variable "teku_geth" {
  default = {
    name            = "teku-geth"
    count           = 1
    validator_start = 750
    validator_end   = 850
  }
}

variable "teku_besu" {
  default = {
    name            = "teku-besu"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "teku_nethermind" {
  default = {
    name            = "teku-nethermind"
    count           = 1
    validator_start = 850
    validator_end   = 950
  }
}

variable "teku_ethereumjs" {
  default = {
    name            = "teku-ethereumjs"
    count           = 1
    validator_start = 950
    validator_end   = 1000
  }
}

variable "teku_erigon" {
  default = {
    name            = "teku-erigon"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "teku_reth" {
  default = {
    name            = "teku-reth"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "grandine_geth" {
  default = {
    name            = "grandine-geth"
    count           = 1
    validator_start = 1000
    validator_end   = 1100
  }
}

variable "grandine_besu" {
  default = {
    name            = "grandine-besu"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "grandine_nethermind" {
  default = {
    name            = "grandine-nethermind"
    count           = 1
    validator_start = 1100
    validator_end   = 1200
  }
}

variable "grandine_ethereumjs" {
  default = {
    name            = "grandine-ethereumjs"
    count           = 1
    validator_start = 1200
    validator_end   = 1250
  }
}

variable "grandine_erigon" {
  default = {
    name            = "grandine-erigon"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "grandine_reth" {
  default = {
    name            = "grandine-reth"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}
