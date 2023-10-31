resource "kubernetes_manifest" "vault_dynamic_secret" {
  manifest = {
    apiVersion = "secrets.hashicorp.com/v1beta1"
    kind       = "VaultDynamicSecret"

    metadata = {
      name = var.app_name
      namespace = var.k8s_namespace
    }

    spec = {
        vaultAuthRef: var.app_name

        mount: vault_mount.mount.path

        path: join("/", ["creds", vault_database_secret_backend_role.database_secret_backend_role.name])

        destination = {
          create: true
          name: var.app_name
        }
    }
  }

  wait {
    fields = {
      "status.valid" = true
    }
  }
}