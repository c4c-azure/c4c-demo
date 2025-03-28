output "subnet_ids" {
  description = "List of subnet IDs"
  value = [
    for subnet in azurerm_virtual_network.vnet.subnet : subnet.id
  ]
}