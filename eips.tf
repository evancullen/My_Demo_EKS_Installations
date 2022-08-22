# Resource: aws_eip
resource "aws_eip" "eks_nat1" {

  # EIP may require IGW to exist prior to association.
  # Use depends_on to set an explicit dependency on the IGW.
  depends_on = [aws_internet_gateway.eks_internet_gateway]

  # A map of tags to assign to the resource.
  tags = {
    Name = "eks_EIP1"
  }
}

resource "aws_eip" "eks_nat2" {

  # EIP may require IGW to exist prior to association.
  # Use depends_on to set an explicit dependency on the IGW.
  depends_on = [aws_internet_gateway.eks_internet_gateway]

  # A map of tags to assign to the resource.
  tags = {
    Name = "eks_EIP2"
  }
}

