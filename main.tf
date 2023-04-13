terraform {

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }

    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.94.0"
    }
  }

  backend "s3" {
    bucket = "felipeminello-remote-state"
    key    = "aws-vpc/terraform.tfstate"
    region = "us-east-1"
  }

  # backend "azurerm" {
  #   resource_group_name  = "remote-state"
  #   storage_account_name = "felipeminelloremotestate"
  #   container_name       = "remote-state"
  #   key                  = "azure-vnet/terraform.tfstate"
  # }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "felipeminello"
      managed-by = "terraform"
    }
  }
}

provider "azurerm" {
  features {}
}
