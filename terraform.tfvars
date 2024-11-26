cidr_block      = "10.0.0.0/16"
azs             = ["ap-south-1a", "ap-south-1b"]
public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
private_subnets = ["10.0.101.0/24", "10.0.102.0/24"]
ami_id          = "ami-0dee22c13ea7a9a67"
instance_type   = "t3.micro"
db_allocated_storage = 20
db_instance_class    = "db.t3.micro"
db_engine           = "postgres"
db_username         = "admin"
db_password         = "securepassword"
db_identifier       = "app-db"
tags = {
  Environment = "dev"
  Project     = "3-tier-app"
}
