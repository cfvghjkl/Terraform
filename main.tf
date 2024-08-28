terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}
provider azurerm {
  features {}
}

resource "azurerm_resource_group" "StorageApplication1" {
  name     = "StorageApplication1"
  location = "West Europe"
}

resource "azurerm_storage_account" "storage_account1" {
  name                     = "terraformstore88301"
  resource_group_name      = azurerm_resource_group.StorageApplication.name
  location                 = azurerm_resource_group.StorageApplication.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
