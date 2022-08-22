# Resource: aws_internet_gateway
resource "aws_internet_gateway" "eks_internet_gateway" {
  # The VPC ID to create in.
  vpc_id = aws_vpc.eks_vpc.id

  # A map of tag to assign to the resource
  tags = {
    Name = "eks_internet_gateway"
  }
}


