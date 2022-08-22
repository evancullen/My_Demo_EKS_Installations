# Resource: aws_subnet
resource "aws_subnet" "eks_public_1" {
   # The VPC ID.
  vpc_id = aws_vpc.eks_vpc.id

  # The CIDR block for the subnet
  cidr_block = "192.168.0.0/18"

  # The AZ for the subnet
   availability_zone = "us-east-2a"

  # Required for EKS. Instance launched into the subnet should be assign
  map_public_ip_on_launch = true

  # A map of tags to assign to the resource
  tags = {
    Name = "eks_public-us-east-2a"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb" = 1
  }
}

resource "aws_subnet" "eks_public_2" {
   # The VPC ID.
  vpc_id = aws_vpc.eks_vpc.id

  # The CIDR block for the subnet
  cidr_block = "192.168.64.0/18"

  # The AZ for the subnet
   availability_zone = "us-east-2b"

  # Required for EKS. Instance launched into the subnet should be assign
  map_public_ip_on_launch = true

  # A map of tags to assign to the resource
  tags = {
    Name = "eks_public-us-east-2b"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/elb" = 1
  }
}

resource "aws_subnet" "eks_private_1" {
   # The VPC ID.
  vpc_id = aws_vpc.eks_vpc.id

  # The CIDR block for the subnet
  cidr_block = "192.168.128.0/18"

  # The AZ for the subnet
   availability_zone = "us-east-2a"

  # Required for EKS. Instance launched into the subnet should be assign
  map_public_ip_on_launch = true

  # A map of tags to assign to the resource
  tags = {
    Name = "eks_private-us-east-2a"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/internal-elb" = 1
  }
}

resource "aws_subnet" "eks_private_2" {
   # The VPC ID.
  vpc_id = aws_vpc.eks_vpc.id

  # The CIDR block for the subnet
  cidr_block = "192.168.192.0/18"

  # The AZ for the subnet
   availability_zone = "us-east-2b"

  # Required for EKS. Instance launched into the subnet should be assign
  map_public_ip_on_launch = true

  # A map of tags to assign to the resource
  tags = {
    Name = "eks_private-us-east-2b"
    "kubernetes.io/cluster/eks" = "shared"
    "kubernetes.io/role/internal-elb" = 1
  }
}
