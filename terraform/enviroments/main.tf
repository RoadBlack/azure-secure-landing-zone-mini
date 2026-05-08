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
    environment = "production-resource-group"
  }

}

resource "azurerm_storage_account" "production_storage_account" {
  name = "production-storage"
  resource_group_name = azurerm_resource_group.production.name
  location = var.region
  account_tier = "Standard"
  account_replication_type = "LRS"
  access_tier = "Hot"
  allow_nested_items_to_be_public = false
  https_traffic_only_enabled = true
  min_tls_version = 1.2
  tags = {
    environment = "production-storage"
  }
}