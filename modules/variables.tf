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