variable "aws_region" {
  type    = string
  default = "ap-east-1"
}

variable "default_tags" {
  type    = map(any)
  default = {}
}

variable "bucket_name" {
  type    = string
  description = "The name of Bucket"
}