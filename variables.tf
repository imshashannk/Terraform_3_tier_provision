variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
}

variable "public_subnets" {
  description = "Public subnets CIDR blocks"
  type        = list(string)
}

variable "private_subnets" {
  description = "Private subnets CIDR blocks"
  type        = list(string)
}

variable "ami_id" {
  description = "AMI ID for EC2 instances"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "db_allocated_storage" {
  description = "Allocated storage for the RDS instance"
  type        = number
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
}

variable "db_engine" {
  description = "RDS engine type"
  type        = string
}

variable "db_username" {
  description = "Username for the RDS database"
  type        = string
}

variable "db_password" {
  description = "Password for the RDS database"
  type        = string
}

variable "db_identifier" {
  description = "Identifier for the RDS instance"
  type        = string
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
}
