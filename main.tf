terraform {

  required_version = ">= 1.0.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.73.0"
    }
  }
  backend "s3" {
    bucket = "felipeminello-remote-state"
    key    = "aws-vpc-provider/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"

  default_tags {
    tags = {
      owner      = "felipeminello"
      managed-by = "terraform"
      region     = "us-east-1"
    }
  }
}

provider "aws" {
  alias  = "europa"
  region = "eu-central-1"

  default_tags {
    tags = {
      owner      = "felipeminello"
      managed-by = "terraform"
      region     = "us-east-1"
    }
  }
}
