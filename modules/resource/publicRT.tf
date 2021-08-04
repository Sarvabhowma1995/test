resource "aws_route_table" "publicRT" {
    vpc_id = aws_vpc.firstvpc.id
    route {
        cidr_block = var.publicsubnetid
        gateway_id = aws_internet_gateway.gw.id
    }

	tags = {
		Name = var.publicRTname
	}
}

resource "aws_route_table_association" "publicassociate" {
  subnet_id      = aws_subnet.publicsubnet.id
  route_table_id = aws_route_table.publicRT.id
}
