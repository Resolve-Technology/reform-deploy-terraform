resource "vault_database_secret_backend_role" "database_secret_backend_role" {
  name                  = var.k8s_namespace
  backend               = vault_mount.mount.path
  db_name               = vault_database_secret_backend_connection.database_secret_backend_connection.name
  creation_statements   = ["CREATE USER '{{name}}'@'%' IDENTIFIED BY '{{password}}';", "GRANT SELECT ON *.* TO '{{name}}'@'%';"]
  revocation_statements = ["DROP USER '{{name}}'@'%';"]
  max_ttl               = var.database_role_max_ttl
}