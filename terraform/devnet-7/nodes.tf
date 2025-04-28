# Bootnode
variable "bootnode" {
  default = {
    name            = "bootnode"
    count           = 3
    validator_start = 0
    validator_end   = 0
  }
}

variable "prysm_geth" {
  default = {
    name            = "prysm-geth"
    count           = 76
    validator_start = 0
    validator_end   = 150500
  }
}

variable "prysm_nethermind" {
  default = {
    name            = "prysm-nethermind"
    count           = 63
    validator_start = 150500
    validator_end   = 276500
  }
}

variable "prysm_ethereumjs" {
  default = {
    name            = "prysm-ethereumjs"
    count           = 0
    validator_start = 276500
    validator_end   = 276500
  }
}

variable "prysm_reth" {
  default = {
    name            = "prysm-reth"
    count           = 4
    validator_start = 276500
    validator_end   = 283500
  }
}

variable "prysm_besu" {
  default = {
    name            = "prysm-besu"
    count           = 28
    validator_start = 283500
    validator_end   = 339500
  }
}

variable "prysm_erigon" {
  default = {
    name            = "prysm-erigon"
    count           = 6
    validator_start = 339500
    validator_end   = 350000
  }
}

variable "prysm_nimbusel" {
  default = {
    name            = "prysm-nimbusel"
    count           = 0
    validator_start = 350000
    validator_end   = 350000
  }
}

variable "lighthouse_geth" {
  default = {
    name            = "lighthouse-geth"
    count           = 65
    validator_start = 350000
    validator_end   = 479000
  }
}

variable "lighthouse_nethermind" {
  default = {
    name            = "lighthouse-nethermind"
    count           = 54
    validator_start = 479000
    validator_end   = 587000
  }
}

variable "lighthouse_ethereumjs" {
  default = {
    name            = "lighthouse-ethereumjs"
    count           = 0
    validator_start = 587000
    validator_end   = 587000
  }
}

variable "lighthouse_reth" {
  default = {
    name            = "lighthouse-reth"
    count           = 3
    validator_start = 587000
    validator_end   = 593000
  }
}

variable "lighthouse_besu" {
  default = {
    name            = "lighthouse-besu"
    count           = 24
    validator_start = 593000
    validator_end   = 641000
  }
}

variable "lighthouse_erigon" {
  default = {
    name            = "lighthouse-erigon"
    count           = 5
    validator_start = 641000
    validator_end   = 650000
  }
}

variable "lighthouse_nimbusel" {
  default = {
    name            = "lighthouse-nimbusel"
    count           = 0
    validator_start = 650000
    validator_end   = 650000
  }
}

variable "teku_geth" {
  default = {
    name            = "teku-geth"
    count           = 54
    validator_start = 650000
    validator_end   = 757500
  }
}

variable "teku_nethermind" {
  default = {
    name            = "teku-nethermind"
    count           = 45
    validator_start = 757500
    validator_end   = 847500
  }
}

variable "teku_ethereumjs" {
  default = {
    name            = "teku-ethereumjs"
    count           = 0
    validator_start = 847500
    validator_end   = 847500
  }
}

variable "teku_reth" {
  default = {
    name            = "teku-reth"
    count           = 3
    validator_start = 847500
    validator_end   = 852500
  }
}

variable "teku_besu" {
  default = {
    name            = "teku-besu"
    count           = 20
    validator_start = 852500
    validator_end   = 892500
  }
}

variable "teku_erigon" {
  default = {
    name            = "teku-erigon"
    count           = 4
    validator_start = 892500
    validator_end   = 900000
  }
}

variable "teku_nimbusel" {
  default = {
    name            = "teku-nimbusel"
    count           = 0
    validator_start = 900000
    validator_end   = 900000
  }
}

variable "lodestar_geth" {
  default = {
    name            = "lodestar-geth"
    count           = 3
    validator_start = 900000
    validator_end   = 904300
  }
}

variable "lodestar_nethermind" {
  default = {
    name            = "lodestar-nethermind"
    count           = 2
    validator_start = 904300
    validator_end   = 907900
  }
}

variable "lodestar_ethereumjs" {
  default = {
    name            = "lodestar-ethereumjs"
    count           = 0
    validator_start = 907900
    validator_end   = 907900
  }
}

variable "lodestar_reth" {
  default = {
    name            = "lodestar-reth"
    count           = 1
    validator_start = 907900
    validator_end   = 908100
  }
}

variable "lodestar_besu" {
  default = {
    name            = "lodestar-besu"
    count           = 1
    validator_start = 908100
    validator_end   = 909700
  }
}

variable "lodestar_erigon" {
  default = {
    name            = "lodestar-erigon"
    count           = 1
    validator_start = 909700
    validator_end   = 910000
  }
}

variable "lodestar_nimbusel" {
  default = {
    name            = "lodestar-nimbusel"
    count           = 0
    validator_start = 910000
    validator_end   = 910000
  }
}

variable "nimbus_geth" {
  default = {
    name            = "nimbus-geth"
    count           = 18
    validator_start = 910000
    validator_end   = 944400
  }
}

variable "nimbus_nethermind" {
  default = {
    name            = "nimbus-nethermind"
    count           = 15
    validator_start = 944400
    validator_end   = 973200
  }
}

variable "nimbus_ethereumjs" {
  default = {
    name            = "nimbus-ethereumjs"
    count           = 0
    validator_start = 973200
    validator_end   = 973200
  }
}

variable "nimbus_reth" {
  default = {
    name            = "nimbus-reth"
    count           = 1
    validator_start = 973200
    validator_end   = 974800
  }
}

variable "nimbus_besu" {
  default = {
    name            = "nimbus-besu"
    count           = 7
    validator_start = 974800
    validator_end   = 987600
  }
}

variable "nimbus_erigon" {
  default = {
    name            = "nimbus-erigon"
    count           = 2
    validator_start = 987600
    validator_end   = 990000
  }
}

variable "nimbus_nimbusel" {
  default = {
    name            = "nimbus-nimbusel"
    count           = 0
    validator_start = 990000
    validator_end   = 990000
  }
}

variable "grandine_geth" {
  default = {
    name            = "grandine-geth"
    count           = 3
    validator_start = 990000
    validator_end   = 994300
  }
}

variable "grandine_nethermind" {
  default = {
    name            = "grandine-nethermind"
    count           = 2
    validator_start = 994300
    validator_end   = 997900
  }
}

variable "grandine_ethereumjs" {
  default = {
    name            = "grandine-ethereumjs"
    count           = 0
    validator_start = 997900
    validator_end   = 997900
  }
}

variable "grandine_reth" {
  default = {
    name            = "grandine-reth"
    count           = 1
    validator_start = 997900
    validator_end   = 998100
  }
}

variable "grandine_besu" {
  default = {
    name            = "grandine-besu"
    count           = 1
    validator_start = 998100
    validator_end   = 999700
  }
}

variable "grandine_erigon" {
  default = {
    name            = "grandine-erigon"
    count           = 1
    validator_start = 999700
    validator_end   = 1000000
  }
}

variable "grandine_nimbusel" {
  default = {
    name            = "grandine-nimbusel"
    count           = 0
    validator_start = 1000000
    validator_end   = 1000000
  }
}
