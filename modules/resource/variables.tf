variable "vpcid" {
  type = string
  default = "10.0.0.0/16"
}

variable "vpcname" {
  type = string
  default = "SarvaVPC"
}

variable "publicsubnetid" {
  type = string
  default = "10.0.1.0/24"
}

variable "publicsubnetname" {
  type = string
  default = "SarvaPublicSubnet"
}

variable "privatesubnetid" {
  type = string
  default = "10.0.2.0/24"
}

variable "privatesubnetname" {
  type = string
  default = "SarvaPrivateSubnet"
}

variable "IGW" {
  type = string
  default = "SarvaIGW"
}

variable "publicRTname" {
  type = string
  default = "SarvaPublicRT"
}

variable "privateRTname" {
  type = string
  default = "SarvaPrivateRT"
}

variable "PublicRouteCIDR" {
  type = string
  default = "0.0.0.0/0"
}

variable "kubernetes_sg_ports" {
  type        = list(number)
  description = "list of ingress ports"
  default     = [22, 6443, 2379, 2380, 10250, 10251, 10252]
}

variable "instance_type" {
  default = "t2.micro"
}