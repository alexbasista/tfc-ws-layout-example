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

resource "random_pet" "app_middleware" {
    length    = 2
    prefix    = "middleware"
    separator = "-"
}