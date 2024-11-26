# VPC Outputs
output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "List of public subnets"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "List of private subnets"
  value       = module.vpc.private_subnets
}

# Compute Outputs
output "web_instance_ids" {
  description = "List of EC2 instance IDs for the web tier"
  value       = module.web.instance_ids
}

output "web_instance_ips" {
  description = "Public IP addresses of web tier EC2 instances"
  value       = module.web.instance_ips
}

# Database Outputs
output "db_instance_id" {
  description = "RDS instance ID"
  value       = module.rds.db_instance_id
}

output "db_endpoint" {
  description = "RDS database endpoint"
  value       = module.rds.db_endpoint
}
