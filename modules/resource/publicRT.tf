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
