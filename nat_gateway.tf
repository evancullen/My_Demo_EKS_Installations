# Resource: aws_nat_gateway
resource "aws_nat_gateway" "eks_nat_gw1" {
  # The Allocation ID of the Elastic IP address for the gateway.
  allocation_id = aws_eip.eks_nat1.id

  # The Subnet ID of the subnet in which to place the gateway.
  subnet_id = aws_subnet.eks_public_1.id

  # A map of tags to assign to the resource.
  tags = {
    Name = "eks_ng1"
  }
}

resource "aws_nat_gateway" "eks_nat_gw2" {
  # The Allocation ID of the Elastic IP address for the gateway.
  allocation_id = aws_eip.eks_nat2.id

  # The Subnet ID of the subnet in which to place the gateway.
  subnet_id = aws_subnet.eks_public_2.id

  # A map of tags to assign to the resource.
  tags = {
    Name = "eks_ng2"
  }
}

