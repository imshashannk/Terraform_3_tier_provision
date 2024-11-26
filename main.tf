module "vpc" {
  source = "./modules/vpc"

  vpc_name           = "three-tier-vpc"
  cidr_block         = "10.0.0.0/16"
  azs                = ["eu-west-1a", "eu-west-1b"]
  public_subnets     = ["10.0.101.0/24", "10.0.102.0/24"]
  private_subnets    = ["10.0.1.0/24", "10.0.2.0/24"]
  enable_nat_gateway = true
  tags = {
    Environment = "dev"
  }
}

module "web" {
  source = "./modules/compute"

  vpc_id               = module.vpc.vpc_id
  security_group_name  = "web-sg"
  description          = "Web tier security group"
  ingress_from_port    = 80
  ingress_to_port      = 80
  allowed_cidrs        = ["0.0.0.0/0"]
  instance_count       = 2
  ami_id               = "ami-12345678"
  instance_type        = "t2.micro"
  subnet_ids           = module.vpc.public_subnets
  tags = {
    Tier = "Web"
  }
}

module "rds" {
  source = "./modules/rds"

  name                 = "rds-subnet-group"
  subnet_ids           = module.vpc.private_subnets
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql"
  instance_class       = "db.t2.micro"
  db_name              = "appdb"
  username             = "admin"
  password             = "password123"
  multi_az             = false
  security_group_id    = aws_security_group.db_sg.id
  tags = {
    Tier = "Database"
  }
}
