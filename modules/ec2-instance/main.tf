# Resource: EC2 Instance
resource "aws_instance" "app-web" {
  ami                    = var.ec2_ami_id
  instance_type          = var.instance_type
  user_data              = file("./app-install.sh")
  vpc_security_group_ids = [aws_security_group.my-vpc-ssh.id, aws_security_group.my-vpc-web.id]
  tags = {
    "Name" = "my-ec2-instance"
  }
}
