module "VPC" {
  source = "../modules/vpc"
}

module "PublicSubnet" {
  source = "../modules/public_subnet"
}

module "PrivateSubnet" {
  source = "../modules/private_subnet"
}

module "IGW" {
  source = "../modules/IGW"
}

module "PublicRT" {
  source = "../modules/publicRT"
}