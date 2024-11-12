variable "subscription_id" {
  description = "The Azure Subscription ID"
  type        = string
}
variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
  default     = "my-aks-resource-group"  
}
variable "location" {
  description = "Azure region for deployment"
  type        = string
  default     = "East US"  
}
variable "aks_name" {
  description = "The name of the AKS cluster"
  type        = string
  default     = "my-k-akscluster"  
}
variable "kubernetes_version" {
  description = "The Kubernetes version"
  type        = string
  default     = "1.21.2"  
}
variable "node_count" {
  description = "The number of nodes in the AKS cluster"
  type        = number
  default     = 2  
}
variable "vm_size" {
  description = "The VM size for the AKS node pool"
  type        = string
  default     = "Standard_B2s"  
}
variable "environment" {
  description = "The environment for tagging purposes"
  type        = string
  default     = "production"  
}
