terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }
}
resource "azurerm_resource_group" "production" {
  name     = "rg-production"
  location = var.region
  tags = {
    environment = "production"
  }

}
