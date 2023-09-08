variable "aws_region" {
  type    = string
  default = "ap-east-1"
}

variable "default_tags" {
  type    = map(any)
  default = {}
}

variable "cidr_block" {
  type    = string
  description = "The CIDR of VPC"
}

variable "vpc_name" {
  type    = string
  description = "The name of VPC"
}