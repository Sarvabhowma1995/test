resource "aws_security_group" "dynamicsg" {
  name        = "Kubernetes-SG"
  description = "Kubernetes Security Group"

  dynamic "ingress" {
    for_each = var.kubernetes_sg_ports
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = [var.PublicRouteCIDR]
    }
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = [var.PublicRouteCIDR]
  }
}