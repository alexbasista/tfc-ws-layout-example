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

resource "random_string" "app_web" {
  length    = 4
  prefix    = data.tfe_outputs.from_core.values.core_pet

  keepers = {
    core_pet = data.tfe_outputs.from_core.values.core_pet
  }
}