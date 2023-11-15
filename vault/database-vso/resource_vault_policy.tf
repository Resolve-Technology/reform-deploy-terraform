resource "vault_policy" "policy" {
  name = var.context_name

  policy = <<EOT
path "${join("/", [var.context_name, "creds", vault_database_secret_backend_role.database_secret_backend_role.name])}" {
  capabilities = ["read"]
}

path "sys/leases/+/${join("/", [var.context_name, "creds", vault_database_secret_backend_role.database_secret_backend_role.name])}/*" {
  capabilities = [ "create", "read", "update", "delete", "list", "sudo" ]
}

path "sys/leases/+/${join("/", [var.context_name, "creds", vault_database_secret_backend_role.database_secret_backend_role.name])}" {
  capabilities = [ "create", "read", "update", "delete", "list", "sudo" ]
}
EOT
}
