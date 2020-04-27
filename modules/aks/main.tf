resource "azurerm_kubernetes_cluster" "this" {
  name                = "example-aks1"
  location            = var.rg_location
  resource_group_name = var.rg_name
  dns_prefix          = "exampleaks1"

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  service_principal {
    client_id     = var.sp_clientID
    client_secret = var.sp_clientSecret
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "this" {
  name                  = "internal"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.this.id
  vm_size               = var.vm_size
  node_count            = var.node_count

  tags = {
    Environment = "Production"
  }
}