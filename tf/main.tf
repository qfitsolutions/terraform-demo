provider "azurerm" {
  features {}

  subscription_id = "652453d9-80c1-44fa-90e2-2cbb494003c1"
  client_id       = "219e4f55-6058-479b-95f6-84c1a2f42b03"
  client_secret   = "AWHV5-Q~stAEZnyiE-7L~azMQVgmChlJT5"
  tenant_id       = "e80326a2-653b-4be1-9c42-fa8aa110e0f6"
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.56.0"
    }
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "spn_terraform_rg"
  location = "westeurope"
}

# resource "azurerm_storage_account" "storage" {
#   name                     = "terraform0spn1storage"
#   resource_group_name      = azurerm_resource_group.rg.name
#   location                 = "westeurope"
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
#   allow_blob_public_access = true
# }
