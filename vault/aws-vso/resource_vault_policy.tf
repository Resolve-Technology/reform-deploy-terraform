resource "vault_policy" "policy" {
  name = join("-", [var.target_namespace, var.bucket_name])

  policy = <<EOT
path "${join("/", [join("-", [var.target_namespace, var.bucket_name]), "static-creds", vault_database_secret_backend_role.database_secret_backend_role.name])}" {
  capabilities = ["read"]
}

path "sys/leases/+/${join("/", [join("-", [var.target_namespace, var.bucket_name]), "static-creds", vault_database_secret_backend_role.database_secret_backend_role.name])}/*" {
  capabilities = [ "create", "read", "update", "delete", "list", "sudo" ]
}

path "sys/leases/+/${join("/", [join("-", [var.target_namespace, var.bucket_name]), "static-creds", vault_database_secret_backend_role.database_secret_backend_role.name])}" {
  capabilities = [ "create", "read", "update", "delete", "list", "sudo" ]
}
EOT
}
