terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

provider "random" {
  # Configuration options
}

data "tfe_outputs" "from_core" {
  organization = var.tfe_organization
  workspace    = var.tfe_outputs_workspace
}

# resource "random_pet" "app_web" {
#   length    = 2
#   prefix    = "web"
#   separator = "-"

#   keepers = {
#     core_pet = data.tfe_outputs.from_core.values.core_pet
#   }
# }

resource "random_id" "app_web" {
  byte_length = 4
  prefix      = data.tfe_outputs.from_core.values.core_pet
  #prefix      = "test"

  keepers = {
    core_pet = data.tfe_outputs.from_core.values.core_pet
  }
}