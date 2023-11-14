terraform {
  #required_version = "~> 1.3.0"

  required_providers {
    vault = {
      source  = "hashicorp/vault"
      version = ">= 3.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0"
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

provider "kubernetes" {
  host                   = var.k8s_host
  cluster_ca_certificate = var.k8s_cluster_ca_certificate
  token                  = var.k8s_token
}