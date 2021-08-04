resource "aws_route_table" "privateRT" {
    vpc_id = aws_vpc.firstvpc.id
    route {
        cidr_block = var.privatesubnetid
        gateway_id = aws_internet_gateway.gw.id
    }

	tags = {
		Name = var.privateRTname
	}
}

resource "aws_route_table_association" "privateassociate" {
  subnet_id      = aws_subnet.privatesubnet.id
  route_table_id = aws_route_table.privateRT.id
}