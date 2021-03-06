# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.7.0"
  features {}
}

resource "azurerm_resource_group" "rgs"{
  # Common resource group
    location = "east us 2"
    name = var.rg_name
}

resource "azurerm_virtual_network" "virt_net" {
  # The actual virtual network
  name                = "dummy_vir_net"
  location            = azurerm_resource_group.rgs.location
  resource_group_name = azurerm_resource_group.rgs.name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = ["10.0.0.4", "10.0.0.5"]

  # Subnets
  subnet {
    name           = "subnet1"
    address_prefix = "10.0.1.0/24"
  }

  subnet {
    name           = "subnet2"
    address_prefix = "10.0.2.0/24"
  }

  subnet {
    name           = "subnet3"
    address_prefix = "10.0.3.0/24"
  }

  tags = {
    environment = "learning"
  }
}