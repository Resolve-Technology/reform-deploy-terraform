resource "aws_vpc" "reform_vpc" {
  cidr_block = var.cidr_block
  
  tags = {
    Name = var.vpc_name
    managed-by = "Terraform"
  }
}