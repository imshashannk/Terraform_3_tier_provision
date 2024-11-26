output "instance_ids" {
  value = aws_instance.compute_instances[*].id
}

output "instance_ips" {
  value = aws_instance.compute_instances[*].public_ip
}
