output "k8s_config_raw"{
    value = azurerm_kubernetes_cluster.this.kube_admin_config_raw
    sensitive = true
}