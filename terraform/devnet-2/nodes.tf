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
    count           = 0
    validator_start = 0
    validator_end   = 0
    #size            = "s-4vcpu-8gb-240gb-intel"
  }
}
# Lighthouse
variable "lighthouse_geth" {
  default = {
    name            = "lighthouse-geth"
    count           = 1
    validator_start = 0
    validator_end   = 200
  }
}

variable "lighthouse_besu" {
  default = {
    name            = "lighthouse-besu"
    count           = 1
    validator_start = 200
    validator_end   = 400
  }
}

variable "lighthouse_nethermind" {
  default = {
    name            = "lighthouse-nethermind"
    count           = 1
    validator_start = 400
    validator_end   = 600
  }
}

variable "lighthouse_ethereumjs" {
  default = {
    name            = "lighthouse-ethereumjs"
    count           = 1
    validator_start = 600
    validator_end   = 700
  }
}

variable "lighthouse_erigon" {
  default = {
    name            = "lighthouse-erigon"
    count           = 1
    validator_start = 700
    validator_end   = 900
  }
}

variable "lighthouse_reth" {
  default = {
    name            = "lighthouse-reth"
    count           = 1
    validator_start = 900
    validator_end   = 1100
  }
}

# Prysm
variable "prysm_geth" {
  default = {
    name            = "prysm-geth"
    count           = 1
    validator_start = 1100
    validator_end   = 1300
  }
}

variable "prysm_besu" {
  default = {
    name            = "prysm-besu"
    count           = 1
    validator_start = 1300
    validator_end   = 1500
  }
}

variable "prysm_nethermind" {
  default = {
    name            = "prysm-nethermind"
    count           = 1
    validator_start = 1500
    validator_end   = 1700
  }
}

variable "prysm_ethereumjs" {
  default = {
    name            = "prysm-ethereumjs"
    count           = 1
    validator_start = 1700
    validator_end   = 1800
  }
}

variable "prysm_erigon" {
  default = {
    name            = "prysm-erigon"
    count           = 1
    validator_start = 1800
    validator_end   = 2000
  }
}

variable "prysm_reth" {
  default = {
    name            = "prysm-reth"
    count           = 1
    validator_start = 2000
    validator_end   = 2200
  }
}

# Lodestar
variable "lodestar_geth" {
  default = {
    name            = "lodestar-geth"
    count           = 1
    validator_start = 2200
    validator_end   = 2400
  }
}

variable "lodestar_nethermind" {
  default = {
    name            = "lodestar-nethermind"
    count           = 1
    validator_start = 2400
    validator_end   = 2600
  }
}

variable "lodestar_besu" {
  default = {
    name            = "lodestar-besu"
    count           = 1
    validator_start = 2600
    validator_end   = 2800
  }
}

variable "lodestar_ethereumjs" {
  default = {
    name            = "lodestar-ethereumjs"
    count           = 1
    validator_start = 2800
    validator_end   = 2900
  }
}

variable "lodestar_erigon" {
  default = {
    name            = "lodestar-erigon"
    count           = 1
    validator_start = 2900
    validator_end   = 3100
  }
}

variable "lodestar_reth" {
  default = {
    name            = "lodestar-reth"
    count           = 1
    validator_start = 3100
    validator_end   = 3300
  }
}

# Nimbus
variable "nimbus_geth" {
  default = {
    name            = "nimbus-geth"
    count           = 1
    validator_start = 3300
    validator_end   = 3500
  }
}

variable "nimbus_besu" {
  default = {
    name            = "nimbus-besu"
    count           = 1
    validator_start = 3500
    validator_end   = 3700
  }
}

variable "nimbus_nethermind" {
  default = {
    name            = "nimbus-nethermind"
    count           = 1
    validator_start = 3700
    validator_end   = 3900
  }
}

variable "nimbus_ethereumjs" {
  default = {
    name            = "nimbus-ethereumjs"
    count           = 1
    validator_start = 3900
    validator_end   = 4000
  }
}

variable "nimbus_erigon" {
  default = {
    name            = "nimbus-erigon"
    count           = 1
    validator_start = 4000
    validator_end   = 4200
  }
}

variable "nimbus_reth" {
  default = {
    name            = "nimbus-reth"
    count           = 1
    validator_start = 4200
    validator_end   = 4400
  }
}

# Teku
variable "teku_geth" {
  default = {
    name            = "teku-geth"
    count           = 1
    validator_start = 4400
    validator_end   = 4600
  }
}

variable "teku_besu" {
  default = {
    name            = "teku-besu"
    count           = 1
    validator_start = 4600
    validator_end   = 4800
  }
}

variable "teku_nethermind" {
  default = {
    name            = "teku-nethermind"
    count           = 1
    validator_start = 4800
    validator_end   = 5000
  }
}

variable "teku_ethereumjs" {
  default = {
    name            = "teku-ethereumjs"
    count           = 1
    validator_start = 5000
    validator_end   = 5100
  }
}

variable "teku_erigon" {
  default = {
    name            = "teku-erigon"
    count           = 1
    validator_start = 5100
    validator_end   = 5300
  }
}

variable "teku_reth" {
  default = {
    name            = "teku-reth"
    count           = 1
    validator_start = 5300
    validator_end   = 5500
  }
}

variable "grandine_geth" {
  default = {
    name            = "grandine-geth"
    count           = 1
    validator_start = 5500
    validator_end   = 5700
  }
}

variable "grandine_besu" {
  default = {
    name            = "grandine-besu"
    count           = 1
    validator_start = 5700
    validator_end   = 5900
  }
}

variable "grandine_nethermind" {
  default = {
    name            = "grandine-nethermind"
    count           = 1
    validator_start = 5900
    validator_end   = 6100
  }
}

variable "grandine_ethereumjs" {
  default = {
    name            = "grandine-ethereumjs"
    count           = 1
    validator_start = 6100
    validator_end   = 6200
  }
}

variable "grandine_erigon" {
  default = {
    name            = "grandine-erigon"
    count           = 1
    validator_start = 6200
    validator_end   = 6400
  }
}

variable "grandine_reth" {
  default = {
    name            = "grandine-reth"
    count           = 1
    validator_start = 6400
    validator_end   = 6600
  }
}