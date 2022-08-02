terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.3.2"
    }
  }
}

provider "random" {
  # Configuration options
}

data "tfe_outputs" "foo" {
  organization = var.tfe_organization
  workspace    = var.tfe_outputs_workspace
}

resource "random_pet" "app_web" {
    length    = 2
    prefix    = "web"
    separator = "-"
}