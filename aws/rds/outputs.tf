output "db_instance" {
  value = var.rds_name
}

output "db_endpoint" {
  value = resource.aws_db_instance.db_instance.endpoint
}

output "db_name" {
  value = resource.aws_db_instance.db_instance.db_name
}

output "db_username" {
  value = resource.aws_db_instance.db_instance.username
}

output "db_password" {
  value = resource.aws_db_instance.db_instance.password
  sensitive = true
}