resource "vault_database_secret_backend_connection" "database_secret_backend_connection" {
  name          = var.database_username
  backend       = vault_mount.mount.path
  plugin_name   = "mysql-database-plugin"
  allowed_roles = [var.target_namespace]


  mysql {
    connection_url = "{{username}}:{{password}}@tcp(${var.database_endpoint})/"
    username       = var.database_username
    password       = var.database_password
  }
}