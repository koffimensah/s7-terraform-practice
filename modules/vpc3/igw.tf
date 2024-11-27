# Create an Internet Gateway (IGW)
resource "aws_internet_gateway" "my-igw" {
  vpc_id = aws_vpc.my-vpc.id

  tags = {
    Name = format("%s-%s-igw", var.tags["environment"], var.tags["project"])
  }
}