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
  source        = "./modules/compute"
  vpc_id        = module.vpc.vpc_id
  public_subnet = module.vpc.public_subnets[0]
  ami_id        = var.ami_id
  instance_type = var.instance_type
  tags          = var.tags
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
