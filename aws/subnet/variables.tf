variable "aws_region" {
  type    = string
  default = "ap-east-1"
}

variable "default_tags" {
  type    = map(any)
  default = {}
}

variable "vpc_id" {
  type    = string
  description = "ID of VPC"
}

variable "subnet_cidr_block" {
  type    = string
  description = "The CIDR block of Subnet"
}

variable "subnet_name" {
  type    = string
  description = "The name of Subnet"
}