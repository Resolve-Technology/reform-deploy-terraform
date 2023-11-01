output "database_instance" {
  value = var.rds_name
}

output "database_endpoint" {
  value = resource.aws_db_instance.db_instance.endpoint
}

output "database_name" {
  value = resource.aws_db_instance.db_instance.db_name
}

output "database_username" {
  value = resource.aws_db_instance.db_instance.username
}

output "database_password" {
  value = resource.aws_db_instance.db_instance.password
  sensitive = true
}