resource "vault_policy" "policy" {
  name = join("-", [var.target_namespace, var.database_instance])

  policy = <<EOT
path "${join("/", [join("-", [var.target_namespace, var.database_instance]), "creds", vault_database_secret_backend_role.database_secret_backend_role.name])}" {
  capabilities = ["read"]
}
EOT
}