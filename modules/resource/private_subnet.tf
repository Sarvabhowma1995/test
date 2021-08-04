resource "aws_subnet" "privatesubnet" {
  vpc_id     = aws_vpc.firstvpc.id
  cidr_block = var.privatesubnetid

  tags = {
    Name = var.privatesubnetname
  }
}