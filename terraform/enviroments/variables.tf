variable "region" {
  type        = string
  description = "The Azure region where resources will be deployed."
  default     = "spaincentral"
}
variable "tenant_id" {
  type        = string
  description = "The Azure Active Directory tenant ID."
  default     = terraform.tfvars.tenant_id
}
variable "subcription_id" {
  type = string
  description = "The azure subscription ID"
  default = terraform.tfvars.subscription_id
  
}
