resource "aws_subnet" "public_subnets" {
  count                   = local.az_count
  vpc_id                  = aws_vpc.csye6225_vpc.id
  cidr_block              = element(var.subnet_cidr_public, count.index)
  availability_zone       = element(data.aws_availability_zones.available.names, count.index)
  map_public_ip_on_launch = true

  tags = {
    Name = "${var.vpc_name}-PublicSubnet-${count.index + 1}"
  }
}

resource "aws_subnet" "private_subnets" {
  count             = local.az_count
  vpc_id            = aws_vpc.csye6225_vpc.id
  cidr_block        = element(var.subnet_cidr_private, count.index)
  availability_zone = element(data.aws_availability_zones.available.names, count.index)

  tags = {
    Name = "${var.vpc_name}-PrivateSubnet-${count.index + 1}"
  }
}