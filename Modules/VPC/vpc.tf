resource "aws_vpc" "testVpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.tenancy

  tags = {
    Name = "Fr-sit-vpc-core"
  }
}

resource "aws_subnet" "name" {
  vpc_id = aws_vpc.testVpc
  cidr_block = var.subnet_cidr

  tags = {
    Name = "Fr-sit-subnet1-core"
  }
}

variable "vpc_cidr" {
  type = "string"
}

variable "subnet_cidr" {
  type = "string"
}

variable "tenancy" {
  default = "default"
}