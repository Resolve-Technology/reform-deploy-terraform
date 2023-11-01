# output "vault_address" {
#   value = var.vault_address
# }

# output "vault_namespace" {
#   value = var.vault_auth_namespace
# }

# output "vso_auth_method" {
#   value = "kubernetes"
# }

# output "vso_auth_mount" {
#   value = "kubernetes"
# }

# output "vso_auth_role" {
#   value = var.k8s_namespace
# }

# output "vso_auth_sa" {
#   value = "default"
# }

# output "vso_secret_mount" {
#   value = vault_mount.mount.path
# }

# output "vso_secret_path" {
#   value = join("/", ["creds", vault_database_secret_backend_role.database_secret_backend_role.name])
# }

output "database_endpoint" {
  value = var.database_endpoint
}

output "database_name" {
  value = var.database_name
}

output "database_username" {
  value = "username"
}

output "database_password" {
  value = "password"
}