resource "kubernetes_manifest" "vault_auth" {
  manifest = {
    apiVersion = "secrets.hashicorp.com/v1beta1"
    kind       = "VaultAuth"

    metadata = {
      name = var.app_name
      namespace = var.k8s_namespace
    }

    spec = {
        vaultConnectionRef: var.app_name

        method: "kubernetes"
        mount: "kubernetes"

        kubernetes: {
          role: var.k8s_namespace
          serviceAccount: "default"
        }
    }
  }

  wait {
    fields = {
      "status.valid" = true
    }
  }
}