variable "name" {
  description = "Name for the RDS instance and related resources"
  type        = string
}

variable "allocated_storage" {
  description = "The amount of storage (in gigabytes) to allocate for the RDS instance"
  type        = number
}

variable "storage_type" {
  description = "Storage type for the RDS instance (e.g., gp2, io1)"
  type        = string
}

variable "engine" {
  description = "The database engine to use (e.g., postgres, mysql)"
  type        = string
}

variable "instance_class" {
  description = "The instance type of the RDS instance (e.g., db.t3.micro)"
  type        = string
}

variable "identifier" {
  description = "The unique identifier for the RDS instance"
  type        = string
}

variable "username" {
  description = "The username for the database"
  type        = string
}

variable "password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}

variable "subnet_ids" {
  description = "List of subnet IDs for the RDS subnet group"
  type        = list(string)
}

variable "vpc_id" {
  description = "The ID of the VPC where the RDS instance will be created"
  type        = string
}

variable "security_group_id" {
  description = "The ID of the security group for the RDS instance"
  type        = string
}

variable "db_port" {
  description = "Port number for the database (default: 5432 for PostgreSQL)"
  type        = number
  default     = 5432
}

variable "multi_az" {
  description = "Enable multi-AZ deployments for the RDS instance"
  type        = bool
  default     = false
}

variable "allowed_cidr_blocks" {
  description = "List of CIDR blocks allowed to access the database"
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
}
