resource "vault_policy" "policy" {
  name = join("-", [var.k8s_namespace, var.database_instance])

  policy = <<EOT
path "${join("/", [join("-", [var.k8s_namespace, var.database_instance]), "creds", vault_database_secret_backend_role.database_secret_backend_role.name])}" {
  capabilities = ["read"]
}
EOT
}