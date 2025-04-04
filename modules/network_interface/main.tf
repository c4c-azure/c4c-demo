resource "azurerm_network_interface" "nic" {
  name = "${var.vm_name}-nic"
  location = var.location
  resource_group_name = var.rg_name
  ip_configuration {
    name                          = "${var.vm_name}-ipconfig"
    subnet_id                    = var.subnet_id
    private_ip_address_allocation = var.private_ip_allocation_method
    private_ip_address           = var.private_ip_address
  }

  lifecycle {
    ignore_changes = [ tags ]
  }
}