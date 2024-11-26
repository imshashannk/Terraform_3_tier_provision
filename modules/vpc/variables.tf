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

variable "tags" {
  description = "Tags to apply to VPC and subnets"
  type        = map(string)
}
