resource "aws_db_subnet_group" "db_subnet_group" {
  name_prefix = join("", [var.rds_name, "-"])
  subnet_ids  = var.subnet_ids

  tags = {
    Name       = var.rds_name
    managed-by = "Terraform"
  }
}