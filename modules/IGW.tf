resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.firstvpc.id

  tags = {
    Name = var.IGW
  }
}