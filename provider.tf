terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.57"
    }
  }
}

provider "aws" {
  region = "us-east-2"

  default_tags {
    tags = {
      Environment = "Dev"
      Owner       = "Terraform"
      Status      = "Can Deleted"
    }
  }
}