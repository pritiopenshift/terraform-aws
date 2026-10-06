output "vpc_id" {
  description = "ID of the VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "IDs of public subnets"
  value = {
    for k, v in aws_subnet.public : k => v.id
  }
}

output "private_subnet_ids" {
  description = "IDs of private subnets"
  value = {
    for k, v in aws_subnet.private : k => v.id
  }
}