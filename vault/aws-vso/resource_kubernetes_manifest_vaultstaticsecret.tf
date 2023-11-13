# resource "kubernetes_manifest" "vault_static_secret" {
#   manifest = {
#     apiVersion = "secrets.hashicorp.com/v1beta1"
#     kind       = "VaultStaticSecret"

#     metadata = {
#       name      = var.context_name
#       namespace = var.target_namespace
#     }

#     spec = {
#       vaultAuthRef : var.context_name

#       mount : vault_mount.mount.path

#       path : join("/", ["static-creds", vault_aws_secret_backend_static_role.aws_secret_backend_static_role.name])

#       destination = {
#         create : true
#         name : join("-", ["vso", var.context_name, "output"])
#       }

#       rolloutRestartTargets = [{
#         kind : "Deployment"
#         name : join("-", [var.context_appname, var.target_deployment])
#       }]
#     }
#   }

#   wait {
#     fields = {
#       "status.lastRenewalTime" = "^(\\d+){10}$"
#     }
#   }

#   depends_on = [
#     kubernetes_manifest.vault_auth
#   ]
# }
