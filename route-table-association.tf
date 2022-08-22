# Resource: aws_route_table_association.
resource "aws_route_table_association" "eks_route_table_association_public1" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.eks_public_1.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.eks_RT_public.id
}

resource "aws_route_table_association" "eks_route_table_association_public2" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.eks_public_2.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.eks_RT_public.id
}

resource "aws_route_table_association" "eks_route_table_association_private1" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.eks_private_1.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.eks_RT_private1.id
}

resource "aws_route_table_association" "eks_route_table_association_private2" {
  # The subnet ID to create an association.
  subnet_id = aws_subnet.eks_private_2.id

  # The ID of the routing table to associate with.
  route_table_id = aws_route_table.eks_RT_private2.id
}

