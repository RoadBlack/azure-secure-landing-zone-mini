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
  type        = string
  description = "The azure subscription ID"
  default     = "13e501d1-26d3-4a49-a025-0cf1da12e700"
}
variable "Azure_key" {
  type        = string
  description = "The Azure key for authentication."
  default     = "Eby8vdM02xNOcqFlqUwJPLlmEtlCDXJ1OUzFT50uSRZ6IFsuFq2UVErCz4I6tq/K1SZFPTOtr/KBHBeksoGMGw=="
}
