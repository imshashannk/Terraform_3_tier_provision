output "vpc_id" {
  description = "ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "public_subnets" {
  description = "Public subnet IDs"
  value       = module.vpc.public_subnets
}

output "private_subnets" {
  description = "Private subnet IDs"
  value       = module.vpc.private_subnets
}

output "compute_instance_ids" {
  description = "Compute instance IDs"
  value       = module.compute.instance_ids
}

output "db_instance_id" {
  description = "RDS instance ID"
  value       = module.db.db_instance_id
}

output "db_endpoint" {
  description = "RDS database endpoint"
  value       = module.db.db_endpoint
}
