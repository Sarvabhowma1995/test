resource "aws_route_table" "publicRT" {
    vpc_id = var.aws_vpc.firstvpc.id
    route {
        cidr_block = var.publicsubnetid
        gateway_id = var.aws_internet_gateway.IGW.id
    }

	tags {
		Name = var.publicRTname
	}
}