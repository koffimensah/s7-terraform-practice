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
  region = local.region
}

terraform {
  backend "s3" {
    bucket  = "s7ko-bucket"        # Replace with your S3 bucket name
    key     = "vpc3/state.tfstate" # Path to the state file in the bucket
    region  = "us-east-1"          # Region where the S3 bucket is located
    encrypt = true                 # Enable encryption for state file
    # dynamodb_table = "s7ko-Ddb"           # Optional: DynamoDB table for state locking
  }
}


locals {
  region                 = "us-east-1"
  cidr_block             = "10.0.0.0/16"
  destination_cidr_block = "0.0.0.0/0"
  tags = {
    "owner"          = "del"
    "teams"          = "DevOps"
    "environment"    = "prod"
    "project"        = "projectA"
    "create_by"      = "s7koffi"
    "cloud_provider" = "aws"
  }
}

module "vpc3" {
  source                 = "../../../modules/vpc3"
  region                 = local.region
  cidr_block             = local.cidr_block
  destination_cidr_block = local.destination_cidr_block
  tags                   = local.tags
}