terraform{
    backend "azurerm"{
    resource_group_name  = "dummy_rg"
    storage_account_name = "tfbackendtj"
    container_name       = "tfbackendtj"
    key                  = "terraform.tfstate"
    }
}