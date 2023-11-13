variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

variable "bucket_prefix" {
  type = string
}

variable "force_destroy" {
  type    = bool
  default = true
}
