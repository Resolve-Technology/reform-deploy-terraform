resource "vault_mount" "mount" {
  path = join("-", [var.target_namespace, var.bucket_name])
  type = "aws"
}
