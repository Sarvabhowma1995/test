resource "aws_security_group" "dynamicsg" {
  name        = "dynamic-sg"
  description = "Kubernetes Security Group"

  dynamic "ingress" {  ## dynamic block with iterator.
    for_each = var.kubernetes_sg_ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  dynamic "egress" {  ## Dynamic block without iterator.
    for_each = var.sg_ports
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}