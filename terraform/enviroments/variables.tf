variable "region" {
  type        = string
  description = "The Azure region where resources will be deployed."
  default     = "spaincentral"
}
variable "tenant_id" {
  type        = string
  description = "The Azure Active Directory tenant ID."
  default     = "53bc24c5-73ad-421a-9408-3ea555be4a07"
}
variable "subcription_id" {
  type = string
  description = "The azure subscription ID"
  default = "13e501d1-26d3-4a49-a025-0cf1da12e700"

  
}
