terraform {
  backend "azurerm" {
    resource_group_name  = "rg-iac-storage"
    storage_account_name = "stiactftstate"
    container_name       = "tfstate"
    key                  = "vm_windows.tfstate"
  }
}