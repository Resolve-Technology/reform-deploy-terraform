resource "aws_security_group" "security_group" {
  name_prefix = join("", [var.rds_name, "-"])
  vpc_id      = var.vpc_id

  ingress {
    description = "Allow Wordpress to connect database"
    from_port   = var.port
    to_port     = var.port
    protocol    = "tcp"
    cidr_blocks = var.cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name       = var.rds_name
    managed-by = "Terraform"
  }
}