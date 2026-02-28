variable "rg_name" {
  default = "dev-rg"
}

variable "rg_location" {
  default = "eastus"
}

variable "rg_tags" {
  default = {
    environment = "dev"
    owner       = "team-x"
  }
}

variable "vm_name" {
  default = "dev-vm"
}

variable "vm_size" {
  default = "Standard_DS1_v2"
}

variable "admin_username" {}
variable "admin_password" { sensitive = true }
variable "nic_id" {}