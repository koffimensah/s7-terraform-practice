variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for the private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the subnets"
  type        = string
  default     = "us-east-1a"
}

variable "vpc_name" {
  description = "Name tag for the VPC"
  type        = string
  default     = "s7koffi_vpc"
}

variable "public_subnet_name" {
  description = "Name tag for the public subnet"
  type        = string
  default     = "PublicSubnet-01"
}

variable "private_subnet_name" {
  description = "Name tag for the private subnet"
  type        = string
  default     = "PrivateSubnet-01"
}

variable "public_route_table_name" {
  description = "Name tag for the public route table"
  type        = string
  default     = "PublicRouteTable"
}

variable "private_route_table_name" {
  description = "Name tag for the private route table"
  type        = string
  default     = "PrivateRouteTable"
}

variable "internet_gateway_name" {
  description = "Name tag for the internet gateway"
  type        = string
  default     = "s7koffi_igw"
}

variable "nat_gateway_name" {
  description = "Name tag for the NAT gateway"
  type        = string
  default     = "NatGateway"
}

# variable "public_security_group_name" {
#   description = "Name tag for the public security group"
#   type        = string
#   default     = "PublicSecurityGroup"
# }
