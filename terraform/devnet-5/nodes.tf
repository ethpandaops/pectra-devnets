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
  }
}

# xatu
variable "xatu" {
  default = {
    name            = "xatu"
    count           = 1
    validator_start = 0
    validator_end   = 0
    size            = "s-8vcpu-16gb-amd"
  }
}

variable "prysm_geth" {
  default = {
    name            = "prysm-geth"
    count           = 5
    validator_start = 0
    validator_end   = 1250
  }
}

variable "prysm_nethermind" {
  default = {
    name            = "prysm-nethermind"
    count           = 1
    validator_start = 1250
    validator_end   = 1500
  }
}

variable "prysm_ethereumjs" {
  default = {
    name            = "prysm-ethereumjs"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "prysm_reth" {
  default = {
    name            = "prysm-reth"
    count           = 2
    validator_start = 1500
    validator_end   = 2000
  }
}

variable "prysm_besu" {
  default = {
    name            = "prysm-besu"
    count           = 1
    validator_start = 2000
    validator_end   = 2250
  }
}

variable "prysm_erigon" {
  default = {
    name            = "prysm-erigon"
    count           = 1
    validator_start = 2250
    validator_end   = 2500
  }
}

variable "prysm_nimbusel" {
  default = {
    name            = "prysm-nimbusel"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "lighthouse_geth" {
  default = {
    name            = "lighthouse-geth"
    count           = 5
    validator_start = 2500
    validator_end   = 3750
  }
}

variable "lighthouse_nethermind" {
  default = {
    name            = "lighthouse-nethermind"
    count           = 1
    validator_start = 3750
    validator_end   = 4000
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

variable "lighthouse_reth" {
  default = {
    name            = "lighthouse-reth"
    count           = 2
    validator_start = 4000
    validator_end   = 4500
  }
}

variable "lighthouse_besu" {
  default = {
    name            = "lighthouse-besu"
    count           = 1
    validator_start = 4500
    validator_end   = 4750
  }
}

variable "lighthouse_erigon" {
  default = {
    name            = "lighthouse-erigon"
    count           = 1
    validator_start = 4750
    validator_end   = 5000
  }
}

variable "lighthouse_nimbusel" {
  default = {
    name            = "lighthouse-nimbusel"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "teku_geth" {
  default = {
    name            = "teku-geth"
    count           = 4
    validator_start = 5000
    validator_end   = 6000
  }
}

variable "teku_nethermind" {
  default = {
    name            = "teku-nethermind"
    count           = 1
    validator_start = 6000
    validator_end   = 6250
  }
}

variable "teku_ethereumjs" {
  default = {
    name            = "teku-ethereumjs"
    count           = 1
    validator_start = 6250
    validator_end   = 6500
  }
}

variable "teku_reth" {
  default = {
    name            = "teku-reth"
    count           = 2
    validator_start = 6500
    validator_end   = 7000
  }
}

variable "teku_besu" {
  default = {
    name            = "teku-besu"
    count           = 1
    validator_start = 7000
    validator_end   = 7250
  }
}

variable "teku_erigon" {
  default = {
    name            = "teku-erigon"
    count           = 1
    validator_start = 7250
    validator_end   = 7500
  }
}

variable "teku_nimbusel" {
  default = {
    name            = "teku-nimbusel"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "lodestar_geth" {
  default = {
    name            = "lodestar-geth"
    count           = 1
    validator_start = 7500
    validator_end   = 7750
  }
}

variable "lodestar_nethermind" {
  default = {
    name            = "lodestar-nethermind"
    count           = 1
    validator_start = 7750
    validator_end   = 8000
  }
}

variable "lodestar_ethereumjs" {
  default = {
    name            = "lodestar-ethereumjs"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "lodestar_reth" {
  default = {
    name            = "lodestar-reth"
    count           = 1
    validator_start = 8000
    validator_end   = 8250
  }
}

variable "lodestar_besu" {
  default = {
    name            = "lodestar-besu"
    count           = 1
    validator_start = 8250
    validator_end   = 8500
  }
}

variable "lodestar_erigon" {
  default = {
    name            = "lodestar-erigon"
    count           = 1
    validator_start = 8500
    validator_end   = 8750
  }
}

variable "lodestar_nimbusel" {
  default = {
    name            = "lodestar-nimbusel"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "nimbus_geth" {
  default = {
    name            = "nimbus-geth"
    count           = 1
    validator_start = 8750
    validator_end   = 9000
  }
}

variable "nimbus_nethermind" {
  default = {
    name            = "nimbus-nethermind"
    count           = 1
    validator_start = 9000
    validator_end   = 9250
  }
}

variable "nimbus_ethereumjs" {
  default = {
    name            = "nimbus-ethereumjs"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "nimbus_reth" {
  default = {
    name            = "nimbus-reth"
    count           = 1
    validator_start = 9250
    validator_end   = 9500
  }
}

variable "nimbus_besu" {
  default = {
    name            = "nimbus-besu"
    count           = 1
    validator_start = 9500
    validator_end   = 9750
  }
}

variable "nimbus_erigon" {
  default = {
    name            = "nimbus-erigon"
    count           = 1
    validator_start = 9750
    validator_end   = 10000
  }
}

variable "nimbus_nimbusel" {
  default = {
    name            = "nimbus-nimbusel"
    count           = 1
    validator_start = 11250
    validator_end   = 11300
  }
}

variable "grandine_geth" {
  default = {
    name            = "grandine-geth"
    count           = 1
    validator_start = 10000
    validator_end   = 10250
  }
}

variable "grandine_nethermind" {
  default = {
    name            = "grandine-nethermind"
    count           = 1
    validator_start = 10250
    validator_end   = 10500
  }
}

variable "grandine_ethereumjs" {
  default = {
    name            = "grandine-ethereumjs"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}

variable "grandine_reth" {
  default = {
    name            = "grandine-reth"
    count           = 1
    validator_start = 10500
    validator_end   = 10750
  }
}

variable "grandine_besu" {
  default = {
    name            = "grandine-besu"
    count           = 1
    validator_start = 10750
    validator_end   = 11000
  }
}

variable "grandine_erigon" {
  default = {
    name            = "grandine-erigon"
    count           = 1
    validator_start = 11000
    validator_end   = 11250
  }
}

variable "grandine_nimbusel" {
  default = {
    name            = "grandine-nimbusel"
    count           = 0
    validator_start = 0
    validator_end   = 0
  }
}