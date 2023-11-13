resource "vault_aws_secret_backend" "aws_secret_backend" {
  access_key            = var.vault_root_access_key
  secret_key            = var.vault_root_secret_key
  region                = var.bucket_region
  path                  = vault_mount.mount.path
  max_lease_ttl_seconds = var.max_lease_ttl_seconds
}
