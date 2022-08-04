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

resource "random_id" "app_web" {
  byte_length = 4
  prefix      = "${data.tfe_outputs.from_core.values.core_pet}-"

  keepers = {
    core_pet = data.tfe_outputs.from_core.values.core_pet
  }
}

data "terraform_remote_state" "fetch" {
  backend = "remote"
  config = {
    organization = var.tfe_organization
    
    workspaces = {
      name = var.tfe_outputs_workspace
    }
  }
}

output "remote_state" {
  value = data.terraform_remote_state.fetch.outputs
}
