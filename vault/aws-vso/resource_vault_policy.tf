resource "vault_policy" "policy" {
  name = join("-", [var.target_namespace, var.bucket_prefix])

  policy = <<EOT
path "${join("/", [join("-", [var.target_namespace, var.bucket_prefix]), "creds", vault_aws_secret_backend_role.aws_secret_backend_role.name])}" {
  capabilities = ["read"]
}

path "sys/leases/+/${join("/", [join("-", [var.target_namespace, var.bucket_prefix]), "creds", vault_aws_secret_backend_role.aws_secret_backend_role.name])}/*" {
  capabilities = [ "create", "read", "update", "delete", "list", "sudo" ]
}

path "sys/leases/+/${join("/", [join("-", [var.target_namespace, var.bucket_prefix]), "creds", vault_aws_secret_backend_role.aws_secret_backend_role.name])}" {
  capabilities = [ "create", "read", "update", "delete", "list", "sudo" ]
}
EOT
}
