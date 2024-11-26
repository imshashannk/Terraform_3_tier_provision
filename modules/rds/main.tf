resource "aws_db_subnet_group" "main" {
  name        = "${var.tags["Project"]}-db-subnet-group"
  subnet_ids  = var.subnet_ids
  description = "Subnet group for the RDS database"
}

resource "aws_db_instance" "main" {
  allocated_storage    = var.allocated_storage
  instance_class       = var.instance_class
  engine               = var.engine
  username             = var.username
  password             = var.password
  db_subnet_group_name = aws_db_subnet_group.main.name
  identifier           = var.identifier
  vpc_security_group_ids = [var.vpc_id]
  tags = merge(
    var.tags,
    { Name = "${var.tags["Project"]}-rds" }
  )
}
