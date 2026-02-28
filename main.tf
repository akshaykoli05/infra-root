terraform {
  cloud {
    organization = "akshayinfra"

    workspaces {
      name = "Dev"
    }
  }
}

provider "azurerm" {
  features {}
}

# Resource Group module from private registry
module "rg" {
  source  = "akshayInfra/resourcegroup/azure"
  version = "1.0.0"

  rg_name     = var.rg_name
  rg_location = var.rg_location
  rg_tags     = var.rg_tags
}

# VM module from private registry
module "vm" {
  source  = "akshayInfra/vmmodule/azure"
  version = "1.0.0"

  vm_name             = var.vm_name
  resource_group_name = module.rg.name
  location            = module.rg.location
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  nic_id              = var.nic_id
}