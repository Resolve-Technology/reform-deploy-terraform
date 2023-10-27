variable "aws_region" {
  type    = string
  default = "us-west-2"
}

variable "aws_access_key" {
  type    = string
}

variable "aws_secret_key" {
  type    = string
}

variable "vpc_id" {
  type        = string
  description = "The ID of VPC"
  default     = "vpc-0edb1f23051fbead0"
}

variable "subnet_ids" {
  type        = list(any)
  description = "The ID of subnets"
  default     = ["subnet-025e2e1b003dbad22", "subnet-028c092085156a31c"]
}

variable "cidr_blocks" {
  type        = list(any)
  description = "The cidr block of EKS"
  default     = ["172.17.0.0/20", "172.17.16.0/20", "192.168.96.0/23"]
}

variable "rds_name" {
  type        = string
  description = "The name of database"
}

variable "db_name" {
  type        = string
  description = "The name of database instance"
  default     = "wordpress"
}

variable "username" {
  type        = string
  description = "The username of database"
  default     = "wordpress"
}

variable "allocated_storage" {
  type        = number
  description = "The size of database"
  default     = 32
}

variable "engine" {
  type        = string
  description = "The engine of database"
  default     = "mysql"
}

variable "engine_version" {
  type        = string
  description = "The engine version of database"
  default     = "8.0.33"
}

variable "instance_class" {
  type        = string
  description = "The instance class of database"
  default     = "db.t3.micro"
}

variable "port" {
  type        = number
  description = "The port of database"
  default     = 3306
}

variable "multi_az" {
  type        = bool
  description = "Specifies if the RDS instance is multi-AZ"
  default     = false
}