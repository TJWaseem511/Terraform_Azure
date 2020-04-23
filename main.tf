# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  features {}
}

resource "azurerm_resource_group" "rgs"{
    location = "east us 2"
    name = var.rg_name
}