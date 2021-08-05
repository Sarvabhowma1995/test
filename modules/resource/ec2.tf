data "aws_ami" "rhel" {
  most_recent = true

  filter {
    name   = "name"
    values = ["RHEL_HA-8.4.0*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
  owners = ["309956199498"]
}


resource "aws_instance" "masterinstance" {
   ami = data.aws_ami.rhel.id
   instance_type = var.instance_type
   count = 3
   key_name = "mumbai"

   tags = {
    Name = "Kubernetes"
  }
}