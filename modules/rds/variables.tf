variable "allocated_storage" {
  description = "Allocated storage for the RDS instance in GB"
  type        = number
}

variable "instance_class" {
  description = "RDS instance class"
  type        = string
}

variable "engine" {
  description = "RDS engine type"
  type        = string
}

variable "username" {
  description = "Username for the RDS database"
  type        = string
}

variable "password" {
  description = "Password for the RDS database"
  type        = string
}

variable "identifier" {
  description = "Identifier for the RDS instance"
  type        = string
}

variable "subnet_ids" {
  description = "List of private subnets for the RDS subnet group"
  type        = list(string)
}

variable "vpc_id" {
  description = "ID of the VPC for RDS security group"
  type        = string
}

variable "tags" {
  description = "Tags to apply to RDS resources"
  type        = map(string)
}
