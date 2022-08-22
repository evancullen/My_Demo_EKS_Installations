# Resource: aws_route_table
resource "aws_route_table" "eks_RT_public" {
  # The VPC ID.
  vpc_id = aws_vpc.eks_vpc.id
  route {
    # The CIDR block of the route.
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC internet gateway of a virtual private gateway.
    gateway_id = aws_internet_gateway.eks_internet_gateway.id
  }
  # A map of tags to assign to the resource.
  tags = {
    Name = "eks_RT_public"
  }
}

resource "aws_route_table" "eks_RT_private1" {
  # The VPC ID.
  vpc_id = aws_vpc.eks_vpc.id
  route {
    # The CIDR block of the route.
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC NAT gateway
    nat_gateway_id = aws_nat_gateway.eks_nat_gw1.id
  }
  # A map of tags to assign to the resource.
  tags = {
    Name = "eks_RT_private1"
  }
}

resource "aws_route_table" "eks_RT_private2" {
  # The VPC ID.
  vpc_id = aws_vpc.eks_vpc.id
  route {
    # The CIDR block of the route.
    cidr_block = "0.0.0.0/0"

    # Identifier of a VPC NAT gateway
    nat_gateway_id = aws_nat_gateway.eks_nat_gw2.id
  }
  # A map of tags to assign to the resource.
  tags = {
    Name = "eks_RT_private2"
  }
}

