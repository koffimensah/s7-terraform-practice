variable "aws_region" {
  description = "region where AWS resource will be created"
  type        = string
  default     = "us-east-1"
}

variable "ec2_ami_id" {
  description = "the image to be used"
  type        = string
  default     = "ami-0866a3c8686eaeeba"
}
variable "instance_type" {
  description = "instance type to be used"
  type        = string
  default     = "t2.micro"
}

# variable "enable_public_ip" {
#     description = "public IP to be used"
#     type = bool
#     default = "true"
# }

# variable "project_environment" {
#     description = "the environment of the project"
#     type = map(string)
#     default = {
#       project = "project-alpha"
#       environment = "dev"
#       create_by = "Terraform"
#     }
# }

# variable "user_names" {
#     description = "names of the users"
#     type = list(string)
#     default = ["user1", "user2", "user3", "user4"]
# }