resource "azurerm_virtual_network" "production_vnet" {
  name                = "production-vnet"
  resource_group_name = azurerm_resource_group.production.name
  location            = var.region
  address_space       = ["10.0.0.0/24"]
}
resource "azurerm_subnet" "production_subnet" {
  name                 = "production-subnet"
  resource_group_name  = azurerm_resource_group.production.name
  virtual_network_name = azurerm_virtual_network.production_vnet.name
  address_prefixes     = ["10.0.0.0/24"]
}
resource "azurerm_network_security_group" "production_nsg" {
  name                = "production-nsg"
  resource_group_name = azurerm_resource_group.production.name
  location            = var.region
}  