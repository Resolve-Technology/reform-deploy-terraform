resource "kubernetes_manifest" "vault_auth" {
  manifest = {
    apiVersion = "secrets.hashicorp.com/v1beta1"
    kind       = "VaultAuth"

    metadata = {
      name = var.context_name
      namespace = var.target_namespace
    }

    spec = {
        vaultConnectionRef: var.context_name

        method: "kubernetes"
        mount: "kubernetes"

        kubernetes: {
          role: var.target_namespace
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