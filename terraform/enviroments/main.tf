#define the required provider and its version
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.1.0"
    }
  }
}
provider "azurerm" {
  subscription_id = var.subcription_id
  features {
    key_vault {
      recover_soft_deleted_key_vaults = true
      purge_soft_delete_on_destroy = true
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
  name = "accproductionstorage"
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

resource "azurerm_key_vault" "production_key_vault" {
  name = "productionkeyvault"
  location = var.region
  resource_group_name = azurerm_resource_group.production.name
  enabled_for_disk_encryption = true
  tenant_id = var.tenant_id
  sku_name = "standard"
}
