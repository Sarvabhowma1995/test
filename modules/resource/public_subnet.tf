resource "aws_subnet" "publicsubnet" {
  vpc_id     = aws_vpc.firstvpc.id
  cidr_block = var.publicsubnetid

  tags = {
    Name = var.publicsubnetname
  }
}