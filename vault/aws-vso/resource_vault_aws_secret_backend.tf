resource "vault_aws_secret_backend" "aws_secret_backend" {
  access_key            = var.access_key
  secret_key            = var.secret_key
  region                = var.bucket_region
  path                  = var.context_name
  max_lease_ttl_seconds = var.max_lease_ttl_seconds
}
