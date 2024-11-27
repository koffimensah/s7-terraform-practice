variable "region" {
  description = "region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "dynamodb_table_name" {
  description = "The name of the DynamoDB table for state locking"
  type        = string
  default     = "s7ko-Ddb"
}

variable "environment" {
  description = "Environment tags for the resources"
  type        = string
  default     = "Dev"
}

variable "aws_profile" {
  description = "AWS CLI profile for authentication"
  type        = string
  default     = "default"
}