resource "kubernetes_manifest" "vault_dynamic_secret" {
  manifest = {
    apiVersion = "secrets.hashicorp.com/v1beta1"
    kind       = "VaultDynamicSecret"

    metadata = {
      name      = var.context_name
      namespace = var.target_namespace
    }

    spec = {
      vaultAuthRef : var.context_name

      mount : vault_aws_secret_backend.aws_secret_backend.path

      path : join("/", ["creds", ])

      destination = {
        create : true
        name : join("-", ["vso", var.context_name, "output"])
      }

      rolloutRestartTargets = [{
        kind : "Deployment"
        name : join("-", [var.context_appname, var.target_deployment])
      }]

      revoke : true
    }
  }

  wait {
    fields = {
      "status.lastRenewalTime" = "^(\\d+){10}$"
    }
  }

  depends_on = [
    kubernetes_manifest.vault_auth
  ]
}
