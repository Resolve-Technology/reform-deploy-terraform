resource "vault_mount" "mount" {
  path = var.context_name
  type = "database"
}
