terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.74.0"
    }
  }
  #################Add Backend here###############
  backend "azurerm" {
    resource_group_name   = "rg-abc"          
    storage_account_name  = "storageaccctesttt"
    container_name        = "tfstate-dev-prabh"             
    key                   = "preprod.tfstate"  
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
