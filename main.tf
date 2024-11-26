provider "aws" {
  region = "ap-south-1"
}

module "vpc" {
  source          = "./modules/vpc"
  cidr_block      = var.cidr_block
  azs             = var.azs
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
  tags            = var.tags
}

module "db" {
  source               = "./modules/db"
  name                 = "my-rds"
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "postgres"
  instance_class       = "db.t3.micro"
  identifier           = "app-rds-instance"
  username             = var.db_username
  password             = var.db_password
  vpc_id               = module.vpc.vpc_id
  subnet_ids           = module.vpc.private_subnets
  allowed_cidr_blocks  = ["10.0.0.0/16"]
  tags                 = var.tags
}
