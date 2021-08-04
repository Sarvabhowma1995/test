resource "aws_vpc" "firstvpc" {
  cidr_block = var.vpcid
  tags = {
    Name = var.vpcname
  }
}