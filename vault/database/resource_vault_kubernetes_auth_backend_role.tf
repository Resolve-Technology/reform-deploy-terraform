resource "vault_kubernetes_auth_backend_role" "kubernetes_auth_backend_role" {
  backend                          = "kubernetes"
  role_name                        = var.k8s_namespace
  bound_service_account_names      = ["default"]
  bound_service_account_namespaces = [var.k8s_namespace]
  token_policies                   = [join("-", [var.k8s_namespace, var.database_instance])]
}