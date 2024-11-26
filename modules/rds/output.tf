output "db_instance_id" {
  description = "ID of the RDS instance"
  value       = aws_db_instance.main.id
}

output "db_endpoint" {
  description = "Endpoint of the RDS instance"
  value       = aws_db_instance.main.endpoint
}

output "db_subnet_group_name" {
  description = "Name of the RDS subnet group"
  value       = aws_db_subnet_group.main.name
}
