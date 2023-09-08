resource "aws_subnet" "reform_subnet" {    
  vpc_id = var.vpc_id
  cidr_block = var.subnet_cidr_block

  tags = {
    Name = var.subnet_name
  }
}