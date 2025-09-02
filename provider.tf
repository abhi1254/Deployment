terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.41.0"
    }
  }
backend "azurerm" {}
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "38411600-15ea-4ef6-ba0b-f7b76456b2f3"
}





