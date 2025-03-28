resource "azurerm_windows_virtual_machine" "vm_win" {
  name                = var.vm_name
  location            = var.location
  resource_group_name = var.rg_name
  size                = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  network_interface_ids = [var.nic_id]
  os_disk {
    name                 = "${var.vm_name}-osdisk"
    caching              = var.vm_os_disk_caching
    storage_account_type = var.vm_os_disk_type
  }
  source_image_reference {
    publisher = var.image_publisher
    offer     = var.image_offer
    sku       = var.image_sku
    version   = "latest"
  }

  license_type = var.os_license_type

  tags = var.tags

  lifecycle {
    ignore_changes = [ tags ]
  }
}