variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "public_subnet" {
  description = "Subnet ID where the EC2 instance will be launched"
  type        = string
}

variable "tags" {
  description = "Tags to apply to EC2 instance"
  type        = map(string)
}
