resource "aws_db_subnet_group" "rds_subnet_group" {
  name       = var.name
  subnet_ids = var.subnet_ids
  description = "Subnet group for RDS"
}

resource "aws_db_instance" "rds_instance" {
  allocated_storage    = var.allocated_storage
  storage_type         = var.storage_type
  engine               = var.engine
  instance_class       = var.instance_class
  name                 = var.db_name
  username             = var.username
  password             = var.password
  publicly_accessible  = false
  multi_az             = var.multi_az
  db_subnet_group_name = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids = [var.security_group_id]

  tags = var.tags
}
