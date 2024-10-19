resource "aws_vpc" "csye6225_vpc" {
  cidr_block       = var.cidr
  instance_tenancy = "default"

  tags = {
    Name = var.vpc_name
  }
}