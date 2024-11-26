variable "name" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "allocated_storage" {
  type = number
}

variable "storage_type" {
  type = string
}

variable "engine" {
  type = string
}

variable "instance_class" {
  type = string
}

variable "db_name" {
  type = string
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}

variable "multi_az" {
  type    = bool
  default = false
}

variable "security_group_id" {
  type = string
}

variable "tags" {
  type = map(string)
}
