# Configuration du provider Azure
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

# Configuration du provider
provider "azurerm" {
  features {}
}

# Création du groupe de ressources
resource "azurerm_resource_group" "main" {
  name     = "monrgterraform"
  location = "West Europe"
}

# Création du compte de stockage
resource "azurerm_storage_account" "main" {
  name                     = "moncomptestorage05061994"  # Changez ce nom pour qu'il soit unique
  resource_group_name      = azurerm_resource_group.main.name
  location                 = azurerm_resource_group.main.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}