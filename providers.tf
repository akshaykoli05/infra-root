terraform {
  cloud {
    organization = "akshayInfra"

    workspaces {
      name = "Dev"
    }
  }
}

provider "azurerm" {
  features {}
}