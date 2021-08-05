data "aws_ami" "rhel" {
  most_recent = true

  filter {
    name   = "name"
    values = ["redhat*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
}


resource "aws_instance" "masterinstance" {
   ami = data.aws_ami.rhel.id
   instance_type = var.instance_type
   count = 3

   tags = {
    Name = "Kubernetes"
  }
}