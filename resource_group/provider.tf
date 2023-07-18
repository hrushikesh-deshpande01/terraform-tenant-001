terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.65.0"
    }
  }
}

provider "azurerm" {
subscription_id = "XXXXX-XXXXX-XXXXX-XXXXXX"
client_id = "XXXXX-XXXXX-XXXXX-XXXXXX"
client_secret = "XXXXX-XXXXX-XXXXX-XXXXXX"
tenant_id= "XXXXX-XXXXX-XXXXX-XXXXXX"
features{}
}