resource "vault_database_secret_backend_role" "database_secret_backend_role" {
  name                  = var.target_namespace
  backend               = vault_mount.mount.path
  db_name               = vault_database_secret_backend_connection.database_secret_backend_connection.name
  creation_statements   = ["CREATE USER '{{name}}'@'%' IDENTIFIED BY '{{password}}';", "GRANT ALL PRIVILEGES ON ${var.database_name}.* TO '{{name}}'@'%';"]
  revocation_statements = ["DROP USER '{{name}}'@'%';"]
  max_ttl               = var.database_role_max_ttl
}