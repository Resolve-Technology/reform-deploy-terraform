resource "kubernetes_manifest" "vault_connection" {
  manifest = {
    apiVersion = "secrets.hashicorp.com/v1beta1"
    kind       = "VaultConnection"

    metadata = {
      name = var.context_name
      namespace = var.target_namespace
    }

    spec = {
        address: var.vault_address
    }
  }

  wait {
    fields = {
      "status.valid" = true
    }
  }
}