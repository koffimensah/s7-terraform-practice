resource "aws_nat_gateway" "nat" {
  count = var.environment == "prod" ? var.availability_zone_count : 1

  allocation_id = aws_eip.nat[count.index].id
  subnet_id     = aws_subnet.public[count.index % var.availability_zone_count].id

  tags = {
    Name = "${var.environment}-nat-${count.index + 1}"
  }
}