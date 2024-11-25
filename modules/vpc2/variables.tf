variable "environment" {
  description = "The environment (prod or qa)"
  type        = string
  default     = "qa"
}

variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "availability_zone_count" {
  description = "Number of availability zones"
  type        = number
  default     = 3
}
