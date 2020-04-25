terraform{
    backend "azurerm"{
    resource_group_name  = "dummy_rg"
    storage_account_name = "tfbackendtj511"
    container_name       = "tfbackendtj511"
    key                  = "terraform.tfstate"
    }
}