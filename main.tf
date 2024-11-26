provider "aws" {
  region = "ap-south-1"
}

# VPC Module
module "vpc" {
  source          = "./modules/vpc"
  cidr_block      = var.cidr_block
  azs             = var.azs
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  tags            = var.tags
}

# Compute Module (Web Tier)
module "compute" {
  source = "./modules/compute"

  # Arguments required by the compute module
  allowed_cidrs        = ["0.0.0.0/0"] # Example: Allow traffic from all IPs
  subnet_ids           = module.vpc.private_subnets # Link to VPC outputs
  security_group_name  = "compute-sg" # Name of the security group
  ingress_to_port      = 80           # Allow HTTP traffic
  ingress_from_port    = 80           # Allow HTTP traffic
  instance_count       = 2            # Number of EC2 instances to launch
  description          = "Compute instances for web tier"
  ami_id               = var.ami_id   # AMI ID for instances
  instance_type        = var.instance_type # Instance type
  tags                 = var.tags     # Common tags
}


# Database Module (DB Tier)
module "db" {
  source               = "./modules/db"
  allocated_storage    = var.db_allocated_storage
  instance_class       = var.db_instance_class
  engine               = var.db_engine
  username             = var.db_username
  password             = var.db_password
  identifier           = var.db_identifier
  subnet_ids           = module.vpc.private_subnets
  vpc_id               = module.vpc.vpc_id
  tags                 = var.tags
}
