resource "vault_kubernetes_auth_backend_role" "kubernetes_auth_backend_role" {
  backend                          = "kubernetes"
  role_name                        = var.target_namespace
  bound_service_account_names      = ["default"]
  bound_service_account_namespaces = [var.target_namespace]
  token_policies                   = [var.context_name]

  depends_on = [
    vault_aws_secret_backend.aws_secret_backend
  ]
}
