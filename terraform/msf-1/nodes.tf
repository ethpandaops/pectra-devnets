
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
    name            = "mevrelay"
    count           = 0
    validator_start = 0
    validator_end   = 0
    size            = "s-4vcpu-16gb-320gb-intel"
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
    count           = 3
    validator_start = 0
    validator_end   = 3000
  }
}

variable "prysm_nethermind" {
  default = {
    name            = "prysm-nethermind"
    count           = 3
    validator_start = 3000
    validator_end   = 5625
  }
}

variable "prysm_ethereumjs" {
  default = {
    name            = "prysm-ethereumjs"
    count           = 0
    validator_start = 5625
    validator_end   = 5625
  }
}

variable "prysm_reth" {
  default = {
    name            = "prysm-reth"
    count           = 1
    validator_start = 5625
    validator_end   = 6225
  }
}

variable "prysm_besu" {
  default = {
    name            = "prysm-besu"
    count           = 1
    validator_start = 6225
    validator_end   = 6825
  }
}

variable "prysm_erigon" {
  default = {
    name            = "prysm-erigon"
    count           = 1
    validator_start = 6825
    validator_end   = 7500
  }
}

variable "prysm_nimbusel" {
  default = {
    name            = "prysm-nimbusel"
    count           = 0
    validator_start = 7500
    validator_end   = 7500
  }
}

variable "lighthouse_geth" {
  default = {
    name            = "lighthouse-geth"
    count           = 3
    validator_start = 7500
    validator_end   = 10500
  }
}

variable "lighthouse_nethermind" {
  default = {
    name            = "lighthouse-nethermind"
    count           = 3
    validator_start = 10500
    validator_end   = 13125
  }
}

variable "lighthouse_ethereumjs" {
  default = {
    name            = "lighthouse-ethereumjs"
    count           = 0
    validator_start = 13125
    validator_end   = 13125
  }
}

variable "lighthouse_reth" {
  default = {
    name            = "lighthouse-reth"
    count           = 1
    validator_start = 13125
    validator_end   = 13725
  }
}

variable "lighthouse_besu" {
  default = {
    name            = "lighthouse-besu"
    count           = 1
    validator_start = 13725
    validator_end   = 14325
  }
}

variable "lighthouse_erigon" {
  default = {
    name            = "lighthouse-erigon"
    count           = 1
    validator_start = 14325
    validator_end   = 15000
  }
}

variable "lighthouse_nimbusel" {
  default = {
    name            = "lighthouse-nimbusel"
    count           = 0
    validator_start = 15000
    validator_end   = 15000
  }
}

variable "teku_geth" {
  default = {
    name            = "teku-geth"
    count           = 3
    validator_start = 15000
    validator_end   = 17400
  }
}

variable "teku_nethermind" {
  default = {
    name            = "teku-nethermind"
    count           = 3
    validator_start = 17400
    validator_end   = 19500
  }
}

variable "teku_ethereumjs" {
  default = {
    name            = "teku-ethereumjs"
    count           = 0
    validator_start = 19500
    validator_end   = 19500
  }
}

variable "teku_reth" {
  default = {
    name            = "teku-reth"
    count           = 1
    validator_start = 19500
    validator_end   = 19980
  }
}

variable "teku_besu" {
  default = {
    name            = "teku-besu"
    count           = 1
    validator_start = 19980
    validator_end   = 20460
  }
}

variable "teku_erigon" {
  default = {
    name            = "teku-erigon"
    count           = 1
    validator_start = 20460
    validator_end   = 21000
  }
}

variable "teku_nimbusel" {
  default = {
    name            = "teku-nimbusel"
    count           = 0
    validator_start = 21000
    validator_end   = 21000
  }
}

variable "lodestar_geth" {
  default = {
    name            = "lodestar-geth"
    count           = 2
    validator_start = 21000
    validator_end   = 22200
  }
}

variable "lodestar_nethermind" {
  default = {
    name            = "lodestar-nethermind"
    count           = 2
    validator_start = 22200
    validator_end   = 23250
  }
}

variable "lodestar_ethereumjs" {
  default = {
    name            = "lodestar-ethereumjs"
    count           = 0
    validator_start = 23250
    validator_end   = 23250
  }
}

variable "lodestar_reth" {
  default = {
    name            = "lodestar-reth"
    count           = 1
    validator_start = 23250
    validator_end   = 23490
  }
}

variable "lodestar_besu" {
  default = {
    name            = "lodestar-besu"
    count           = 1
    validator_start = 23490
    validator_end   = 23730
  }
}

variable "lodestar_erigon" {
  default = {
    name            = "lodestar-erigon"
    count           = 1
    validator_start = 23730
    validator_end   = 24000
  }
}

variable "lodestar_nimbusel" {
  default = {
    name            = "lodestar-nimbusel"
    count           = 0
    validator_start = 24000
    validator_end   = 24000
  }
}

variable "nimbus_geth" {
  default = {
    name            = "nimbus-geth"
    count           = 2
    validator_start = 24000
    validator_end   = 25200
  }
}

variable "nimbus_nethermind" {
  default = {
    name            = "nimbus-nethermind"
    count           = 2
    validator_start = 25200
    validator_end   = 26250
  }
}

variable "nimbus_ethereumjs" {
  default = {
    name            = "nimbus-ethereumjs"
    count           = 0
    validator_start = 26250
    validator_end   = 26250
  }
}

variable "nimbus_reth" {
  default = {
    name            = "nimbus-reth"
    count           = 1
    validator_start = 26250
    validator_end   = 26490
  }
}

variable "nimbus_besu" {
  default = {
    name            = "nimbus-besu"
    count           = 1
    validator_start = 26490
    validator_end   = 26730
  }
}

variable "nimbus_erigon" {
  default = {
    name            = "nimbus-erigon"
    count           = 1
    validator_start = 26730
    validator_end   = 27000
  }
}

variable "nimbus_nimbusel" {
  default = {
    name            = "nimbus-nimbusel"
    count           = 0
    validator_start = 27000
    validator_end   = 27000
  }
}

variable "grandine_geth" {
  default = {
    name            = "grandine-geth"
    count           = 2
    validator_start = 27000
    validator_end   = 28200
  }
}

variable "grandine_nethermind" {
  default = {
    name            = "grandine-nethermind"
    count           = 2
    validator_start = 28200
    validator_end   = 29250
  }
}

variable "grandine_ethereumjs" {
  default = {
    name            = "grandine-ethereumjs"
    count           = 0
    validator_start = 29250
    validator_end   = 29250
  }
}

variable "grandine_reth" {
  default = {
    name            = "grandine-reth"
    count           = 1
    validator_start = 29250
    validator_end   = 29490
  }
}

variable "grandine_besu" {
  default = {
    name            = "grandine-besu"
    count           = 1
    validator_start = 29490
    validator_end   = 29730
  }
}

variable "grandine_erigon" {
  default = {
    name            = "grandine-erigon"
    count           = 1
    validator_start = 29730
    validator_end   = 30000
  }
}

variable "grandine_nimbusel" {
  default = {
    name            = "grandine-nimbusel"
    count           = 0
    validator_start = 30000
    validator_end   = 30000
  }
}
variable "lighthouse_erigonTwo" {
  default = {
    name            = "lighthouse-erigonTwo"
    count           = 0
    validator_start = 30000
    validator_end   = 30000
  }
}