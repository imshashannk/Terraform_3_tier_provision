variable "vpc_id" {
  type = string
}

variable "security_group_name" {
  type = string
}

variable "description" {
  type = string
}

variable "ingress_from_port" {
  type = number
}

variable "ingress_to_port" {
  type = number
}

variable "allowed_cidrs" {
  type = list(string)
}

variable "instance_count" {
  type = number
}



variable "instance_type" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "tags" {
  type = map(string)
}
