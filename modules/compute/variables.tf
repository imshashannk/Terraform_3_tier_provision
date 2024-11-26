variable "vpc_id" {
  description = "ID of the VPC where resources will be deployed"
  type        = string
}




variable "security_group_name" {
  description = "Name of the security group for compute instances"
  type        = string
}

variable "description" {
  description = "Description of the compute resources"
  type        = string
}

variable "ingress_from_port" {
  description = "Ingress traffic source port"
  type        = number
}

variable "ingress_to_port" {
  description = "Ingress traffic destination port"
  type        = number
}

variable "allowed_cidrs" {
  description = "List of CIDR blocks allowed to access the security group"
  type        = list(string)
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
}

variable "subnet_ids" {
  description = "Subnets where EC2 instances will be launched"
  type        = list(string)
}


