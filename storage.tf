resource "azurerm_storage_account" "tfbackend" {
  name                     = "tfbackendtj511"
  resource_group_name      = azurerm_resource_group.rgs.name
  location                 = azurerm_resource_group.rgs.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}

resource "azurerm_storage_container" "tfbackendcontainer"{
    name                    = "tfbackendtj511"
    storage_account_name     = azurerm_storage_account.tfbackend.name
    container_access_type   = "container"
}