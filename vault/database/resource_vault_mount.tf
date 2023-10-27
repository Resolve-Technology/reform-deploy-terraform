resource "vault_mount" "mount" {
  path = join("-", [var.k8s_namespace, var.database_instance])
  type = "database"
}