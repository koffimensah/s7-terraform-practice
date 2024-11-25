resource "aws_eip" "nat" {
  count = var.environment == "prod" ? var.availability_zone_count : 1

  vpc = true

  tags = {
    Name = "${var.environment}-eip-${count.index + 1}"
  }
}
