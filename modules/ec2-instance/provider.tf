# terraform configuration block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# provider block
provider "aws" {
  region  = "us-east-1"
  profile = "default"
}