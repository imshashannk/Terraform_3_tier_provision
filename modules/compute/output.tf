output "instance_ids" {
  description = "List of EC2 instance IDs"
  value       = [aws_instance.web.id]
}

output "instance_ips" {
  description = "List of EC2 instance public IPs"
  value       = [aws_instance.web.public_ip]
}
