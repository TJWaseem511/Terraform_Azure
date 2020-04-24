output "resource_group_id"{
  value = azurerm_resource_group.rgs.id
}
output "vNet_name"{
  value = azurerm_virtual_network.virt_net.name
}