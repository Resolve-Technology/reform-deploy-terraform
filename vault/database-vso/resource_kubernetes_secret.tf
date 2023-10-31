resource "kubernetes_secret" "secret" {
  metadata {
    namespace = var.k8s_namespace
    annotations = {
      "kubernetes.io/service-account.name" = "default"
    }
  }

  type = "kubernetes.io/service-account-token"
}