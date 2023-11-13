resource "vault_aws_secret_backend_static_role" "aws_secret_backend_static_role" {
  backend         = vault_aws_secret_backend.aws_secret_backend.path
  name            = var.vault_iam_user
  username        = var.vault_iam_user
  rotation_period = var.rotation_period
}
