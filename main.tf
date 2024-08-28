terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.0.1"
    }
  }
}
provider azurerm {
  subscription_id = "03607167-68cc-48f2-b9c3-5d794ad5921a"
  tenant_id = "7a8eb511-5cd2-4e25-9c33-39f9c50852e1"
  client_id = "94aacbff-c333-4145-9d5b-64ea48a3c08a"
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
