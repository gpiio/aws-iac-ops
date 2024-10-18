output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.homelab_vpc.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = aws_subnet.public_subnet[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = aws_subnet.private_subnet[*].id
}

output "internet_gateway_id" {
  description = "ID of the internet gateway"
  value       = aws_internet_gateway.homelab_igw.id
}

output "public_security_group" {
  description = "Security group ID for public instances"
  value       = aws_security_group.public_security_group.id
}


