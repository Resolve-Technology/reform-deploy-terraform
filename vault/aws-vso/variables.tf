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

variable "k8s_cluster_ca_certificate" {
  type        = string
  description = "The CA certificate of Kubernetes cluster"
}

variable "k8s_host" {
  type        = string
  description = "The endpoint of Kubernetes cluster"
}

variable "k8s_token" {
  type        = string
  description = "The token of Kubernetes cluster"
}

variable "context_appname" {
  type        = string
  description = "The name of application profile"
}

variable "context_name" {
  type        = string
  description = "The name of component"
}

variable "target_namespace" {
  type        = string
  description = "The namespace on target Kubernetes cluster"
}

variable "target_deployment" {
  type        = string
  description = "The deployment on target Kubernetes cluster"
}

variable "bucket_prefix" {
  type        = string
  description = "The prefix name of bucket"
}

variable "bucket_name" {
  type        = string
  description = "The name of bucket"
}

variable "bucket_arn" {
  type        = string
  description = "The ARN of bucket"
}

variable "bucket_region" {
  type        = string
  description = "The region of bucket"
}

variable "vault_root_access_key" {
  type        = string
  description = "The IAM Access Key for the backend of AWS Secret Engine"
}

variable "vault_root_secret_key" {
  type        = string
  description = "The IAM Secret Access Key for the backend of AWS Secret Engine"
}

variable "max_lease_ttl_seconds" {
  type        = number
  description = "The max TTL for the secret"
  default     = 300
}
