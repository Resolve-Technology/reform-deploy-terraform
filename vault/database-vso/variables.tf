variable "vault_address" {
  type        = string
  description = "The address of HashiCorp Vault"
}

variable "vault_auth_namespace" {
  type        = string
  description = "The namespace to manage on HashiCorp Vault"
}

variable "vault_auth_mount" {
  type        = string
  description = "The mount path to authenticate on HashiCorp Vault"
}

variable "vault_auth_username" {
  type        = string
  description = "The username to authenticate on HashiCorp Vault"
}

variable "vault_auth_password" {
  type        = string
  description = "The password to authenticate on HashiCorp Vault"
}

variable "database_instance" {
  type        = string
  description = "The name of database instance"
}

variable "database_endpoint" {
  type        = string
  description = "The endpoint of database"
}

variable "database_name" {
  type        = string
  description = "The name of database"
}

variable "database_username" {
  type        = string
  description = "The usernamme of database"
}

variable "database_password" {
  type        = string
  description = "The password of database"
}

variable "database_role_max_ttl" {
  type = number
  description = "The max TTL for the dynamic secret"
  default = 300
}

variable "k8s_cluster_ca_certificate" {
  type = string
  description = "The CA certificate of Kubernetes cluster"
}

variable "k8s_host" {
  type = string
  description = "The endpoint of Kubernetes cluster"
}

variable "k8s_token" {
  type = string
  description = "The token of Kubernetes cluster"
}

variable "context_appname" {
  type = string
  description = "The name of application"
}

variable "context_name" {
  type = string
  description = "The name of application"
}

variable "target_namespace" {
  type        = string
  description = "The namespace on target Kubernetes cluster"
}

variable "target_deployment" {
  type        = string
  description = "The deployment on target Kubernetes cluster"
}