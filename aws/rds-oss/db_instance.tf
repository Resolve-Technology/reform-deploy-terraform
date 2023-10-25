resource "aws_db_instance" "db_instance" {
  allocated_storage      = var.allocated_storage
  db_subnet_group_name   = aws_db_subnet_group.db_subnet_group.name
  db_name                = var.db_name
  engine                 = var.engine
  engine_version         = var.engine_version
  identifier_prefix      = join("", [var.rds_name, "-"])
  instance_class         = var.instance_class
  multi_az               = var.multi_az
  password               = random_password.password.result
  port                   = var.port
  skip_final_snapshot    = true
  username               = var.username
  vpc_security_group_ids = [aws_security_group.security_group.id]
  tags = {
    Name       = var.rds_name
    managed-by = "Terraform"
  }

  depends_on = [
    aws_db_subnet_group.db_subnet_group,
    aws_security_group.security_group
  ]
}