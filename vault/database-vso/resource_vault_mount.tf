resource "vault_mount" "mount" {
  path = join("-", [var.target_namespace, var.database_instance])
  type = "database"
}