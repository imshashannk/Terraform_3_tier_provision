variable "vpc_id" {
  type        = string
  description = "ID of the VPC where resources will be deployed"
}

variable "security_group_name" {
  type        = string
  description = "Name of the security group for compute instances"
}

variable "description" {
  type        = string
  description = "Description of the compute resources"
}

variable "ingress_from_port" {
  type        = number
  description = "Ingress traffic source port"
}

variable "ingress_to_port" {
  type        = number
  description = "Ingress traffic destination port"
}

variable "allowed_cidrs" {
  type        = list(string)
  description = "List of CIDR blocks allowed to access the security group"
}

variable "instance_count" {
  type        = number
  description = "Number of EC2 instances to create"
}

variable "subnet_ids" {
  type        = list(string)
  description = "Subnets where EC2 instances will be launched"
}




