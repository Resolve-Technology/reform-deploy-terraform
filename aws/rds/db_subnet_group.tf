resource "aws_db_subnet_group" "db_subnet_group" {
  name_prefix = join("", [var.name, "-"])
  subnet_ids  = var.subnet_ids

  tags = {
    Name       = var.name
    managed-by = "Terraform"
  }
}