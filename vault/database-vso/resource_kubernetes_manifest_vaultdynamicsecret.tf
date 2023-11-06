resource "kubernetes_manifest" "vault_dynamic_secret" {
  manifest = {
    apiVersion = "secrets.hashicorp.com/v1beta1"
    kind       = "VaultDynamicSecret"

    metadata = {
      name = var.context_name
      namespace = var.target_namespace
    }

    spec = {
        vaultAuthRef: var.context_name

        mount: vault_mount.mount.path

        path: join("/", ["creds", vault_database_secret_backend_role.database_secret_backend_role.name])

        destination = {
          create: true
          name: join("-", ["vso", var.context_name, "output"])
        }

        rolloutRestartTargets = [{
          kind: "Deployment"
          name: join("-", [var.context_appname, var.target_deployment])
        }]

        revoke: true
    }
  }

  wait {
    fields = {
      "status.lastRenewalTime" = "^(\\d+){10}$"
    }
  }
}