output "instance_ids" {
  description = "IDs of the created EC2 instances"
  value       = aws_instance.compute.*.id
}

output "instance_public_ips" {
  description = "Public IPs of the created EC2 instances"
  value       = aws_instance.compute.*.public_ip
}
