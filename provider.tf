terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.57"
    }
  }
}

provider "aws" {
  region = var.v_region

  default_tags {
    tags = {
      Environment = var.v_environment
      Owner       = var.v_owner
      Status      = var.v_status
    }
  }
}