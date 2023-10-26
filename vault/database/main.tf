terraform {
  #required_version = "~> 1.3.0"

  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = ">= 3.0"
    }
  }
}

provider "vault" {
  address          = var.vault_address
  skip_child_token = true

  auth_login_userpass {
    namespace = var.vault_auth_namespace != "/" ? var.vault_auth_namespace : null
    mount     = var.vault_auth_mount
    username  = var.vault_auth_username
    password  = var.vault_auth_password
  }
}