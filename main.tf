provider "azurerm" {
  subscription_id = "c990ac78-9d62-413e-b4b6-f823a426894d"
  features {}
}

resource "azurerm_resource_group" "StorageApplication" {
  name     = "StorageApplication"
  location = "West Europe"
}

resource "azurerm_storage_account" "storage_account" {
  name                     = "terraformstore8830"
  resource_group_name      = azurerm_resource_group.StorageApplication.name
  location                 = azurerm_resource_group.StorageApplication.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
