#define the required provider and its version
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }
}
#define resource group for the production environment
resource "azurerm_resource_group" "production" {
  name     = "rg-production"
  location = var.region
  tags = {
    environment = "production-resource-group"
  }

}

#Creating resources in the production environment
resource "azurerm_storage_account" "production_storage_account" {
  name = "Prodstorage"
  resource_group_name = azurerm_resource_group.production.name
  location = var.region
  account_tier = "Standard"
  account_replication_type = "LRS"
  access_tier = "Hot"
  allow_nested_items_to_be_public = false
  https_traffic_only_enabled = true
  min_tls_version = "TLS1_2"
  tags = {
    environment = "production-storage"
  }
}


