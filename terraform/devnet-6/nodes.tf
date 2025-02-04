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
    count           = 7
    validator_start = 0
    validator_end   = 7000
  }
}

variable "prysm_nethermind" {
  default = {
    name            = "prysm-nethermind"
    count           = 7
    validator_start = 7000
    validator_end   = 13125
  }
}

variable "prysm_ethereumjs" {
  default = {
    name            = "prysm-ethereumjs"
    count           = 1
    validator_start = 13125
    validator_end   = 13300
  }
}

variable "prysm_reth" {
  default = {
    name            = "prysm-reth"
    count           = 2
    validator_start = 13300
    validator_end   = 14700
  }
}

variable "prysm_besu" {
  default = {
    name            = "prysm-besu"
    count           = 2
    validator_start = 14700
    validator_end   = 16100
  }
}

variable "prysm_erigon" {
  default = {
    name            = "prysm-erigon"
    count           = 2
    validator_start = 16100
    validator_end   = 17325
  }
}

variable "prysm_nimbusel" {
  default = {
    name            = "prysm-nimbusel"
    count           = 1
    validator_start = 17325
    validator_end   = 17500
  }
}

variable "lighthouse_geth" {
  default = {
    name            = "lighthouse-geth"
    count           = 7
    validator_start = 17500
    validator_end   = 24500
  }
}

variable "lighthouse_nethermind" {
  default = {
    name            = "lighthouse-nethermind"
    count           = 7
    validator_start = 24500
    validator_end   = 30625
  }
}

variable "lighthouse_ethereumjs" {
  default = {
    name            = "lighthouse-ethereumjs"
    count           = 1
    validator_start = 30625
    validator_end   = 30800
  }
}

variable "lighthouse_reth" {
  default = {
    name            = "lighthouse-reth"
    count           = 2
    validator_start = 30800
    validator_end   = 32200
  }
}

variable "lighthouse_besu" {
  default = {
    name            = "lighthouse-besu"
    count           = 2
    validator_start = 32200
    validator_end   = 33600
  }
}

variable "lighthouse_erigon" {
  default = {
    name            = "lighthouse-erigon"
    count           = 2
    validator_start = 33600
    validator_end   = 34825
  }
}

variable "lighthouse_nimbusel" {
  default = {
    name            = "lighthouse-nimbusel"
    count           = 1
    validator_start = 34825
    validator_end   = 35000
  }
}

variable "teku_geth" {
  default = {
    name            = "teku-geth"
    count           = 6
    validator_start = 35000
    validator_end   = 40600
  }
}

variable "teku_nethermind" {
  default = {
    name            = "teku-nethermind"
    count           = 5
    validator_start = 40600
    validator_end   = 45500
  }
}

variable "teku_ethereumjs" {
  default = {
    name            = "teku-ethereumjs"
    count           = 1
    validator_start = 45500
    validator_end   = 45640
  }
}

variable "teku_reth" {
  default = {
    name            = "teku-reth"
    count           = 2
    validator_start = 45640
    validator_end   = 46760
  }
}

variable "teku_besu" {
  default = {
    name            = "teku-besu"
    count           = 2
    validator_start = 46760
    validator_end   = 47880
  }
}

variable "teku_erigon" {
  default = {
    name            = "teku-erigon"
    count           = 1
    validator_start = 47880
    validator_end   = 48860
  }
}

variable "teku_nimbusel" {
  default = {
    name            = "teku-nimbusel"
    count           = 1
    validator_start = 48860
    validator_end   = 49000
  }
}

variable "lodestar_geth" {
  default = {
    name            = "lodestar-geth"
    count           = 3
    validator_start = 49000
    validator_end   = 51800
  }
}

variable "lodestar_nethermind" {
  default = {
    name            = "lodestar-nethermind"
    count           = 3
    validator_start = 51800
    validator_end   = 54250
  }
}

variable "lodestar_ethereumjs" {
  default = {
    name            = "lodestar-ethereumjs"
    count           = 1
    validator_start = 54250
    validator_end   = 54320
  }
}

variable "lodestar_reth" {
  default = {
    name            = "lodestar-reth"
    count           = 1
    validator_start = 54320
    validator_end   = 54880
  }
}

variable "lodestar_besu" {
  default = {
    name            = "lodestar-besu"
    count           = 1
    validator_start = 54880
    validator_end   = 55440
  }
}

variable "lodestar_erigon" {
  default = {
    name            = "lodestar-erigon"
    count           = 1
    validator_start = 55440
    validator_end   = 55930
  }
}

variable "lodestar_nimbusel" {
  default = {
    name            = "lodestar-nimbusel"
    count           = 1
    validator_start = 55930
    validator_end   = 56000
  }
}

variable "nimbus_geth" {
  default = {
    name            = "nimbus-geth"
    count           = 3
    validator_start = 56000
    validator_end   = 58800
  }
}

variable "nimbus_nethermind" {
  default = {
    name            = "nimbus-nethermind"
    count           = 3
    validator_start = 58800
    validator_end   = 61250
  }
}

variable "nimbus_ethereumjs" {
  default = {
    name            = "nimbus-ethereumjs"
    count           = 1
    validator_start = 61250
    validator_end   = 61320
  }
}

variable "nimbus_reth" {
  default = {
    name            = "nimbus-reth"
    count           = 1
    validator_start = 61320
    validator_end   = 61880
  }
}

variable "nimbus_besu" {
  default = {
    name            = "nimbus-besu"
    count           = 1
    validator_start = 61880
    validator_end   = 62440
  }
}

variable "nimbus_erigon" {
  default = {
    name            = "nimbus-erigon"
    count           = 1
    validator_start = 62440
    validator_end   = 62930
  }
}

variable "nimbus_nimbusel" {
  default = {
    name            = "nimbus-nimbusel"
    count           = 1
    validator_start = 62930
    validator_end   = 63000
  }
}

variable "grandine_geth" {
  default = {
    name            = "grandine-geth"
    count           = 3
    validator_start = 63000
    validator_end   = 65800
  }
}

variable "grandine_nethermind" {
  default = {
    name            = "grandine-nethermind"
    count           = 3
    validator_start = 65800
    validator_end   = 68250
  }
}

variable "grandine_ethereumjs" {
  default = {
    name            = "grandine-ethereumjs"
    count           = 1
    validator_start = 68250
    validator_end   = 68320
  }
}

variable "grandine_reth" {
  default = {
    name            = "grandine-reth"
    count           = 1
    validator_start = 68320
    validator_end   = 68880
  }
}

variable "grandine_besu" {
  default = {
    name            = "grandine-besu"
    count           = 1
    validator_start = 68880
    validator_end   = 69440
  }
}

variable "grandine_erigon" {
  default = {
    name            = "grandine-erigon"
    count           = 1
    validator_start = 69440
    validator_end   = 69930
  }
}

variable "grandine_nimbusel" {
  default = {
    name            = "grandine-nimbusel"
    count           = 1
    validator_start = 69930
    validator_end   = 70000
  }
}

variable "lighthouse_erigonTwo" {
  default = {
    name            = "lighthouse-erigonTwo"
    count           = 1
    validator_start = 70000
    validator_end   = 70500
  }
}

