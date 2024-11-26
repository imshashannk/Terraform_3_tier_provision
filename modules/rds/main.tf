# Security Group for RDS
resource "aws_security_group" "db_sg" {
  name        = "${var.name}-db-sg"
  description = "Security group for the RDS instance"
  vpc_id      = var.vpc_id

  # Allow inbound traffic on the database port
  ingress {
    from_port   = var.db_port
    to_port     = var.db_port
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = var.tags
}

# Subnet Group for RDS
resource "aws_db_subnet_group" "rds_subnet_group" {
  name        = var.name
  subnet_ids  = var.subnet_ids
  description = "Subnet group for RDS"

  tags = var.tags
}

# RDS Instance
resource "aws_db_instance" "rds_instance" {
  allocated_storage       = var.allocated_storage
  storage_type            = var.storage_type
  engine                  = var.engine
  instance_class          = var.instance_class
  identifier              = var.identifier
  username                = var.username
  password                = var.password
  publicly_accessible     = false
  multi_az                = var.multi_az
  db_subnet_group_name    = aws_db_subnet_group.rds_subnet_group.name
  vpc_security_group_ids  = [aws_security_group.db_sg.id]

  tags = var.tags
}
