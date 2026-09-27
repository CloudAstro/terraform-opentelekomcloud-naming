terraform {
  required_version = "~> 1.12"

  required_providers {
    random = {
      source  = "hashicorp/random"
      version = ">= 3.5.1, < 4.0.0"
    }
  }
}
