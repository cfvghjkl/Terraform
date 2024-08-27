provider "azurerm" {
  subscription_id = "03607167-68cc-48f2-b9c3-5d794ad5921a"
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
