resource "azurerm_storage_account" "tfbackend" {
  name                     = "tfbackendtj"
  resource_group_name      = azurerm_resource_group.rgs.name
  location                 = azurerm_resource_group.rgs.location
  account_tier             = "Standard"
  account_replication_type = "GRS"
}