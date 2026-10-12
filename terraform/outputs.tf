output "vpc_id" {
  description = "ID of the created VPC."
  value       = aws_vpc.this.id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets."
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets."
  value       = aws_subnet.private[*].id
}

output "nat_gateway_ids" {
  description = "IDs of the created NAT Gateway(s), if any."
  value       = aws_nat_gateway.this[*].id
}

output "web_instance_public_ip" {
  description = "Public IP of the demo web instance, if created."
  value       = var.create_demo_instances ? aws_instance.web[0].public_ip : null
}

output "app_instance_private_ip" {
  description = "Private IP of the demo app instance, if created."
  value       = var.create_demo_instances ? aws_instance.app[0].private_ip : null
}
