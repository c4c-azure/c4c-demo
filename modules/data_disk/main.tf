resource "azurerm_managed_disk" "datadisk" {
  count                       = "${length(var.data_disk_size)}"
  name                        = "${var.vm_name}-datadisk-${count.index + 1}"
  location                    = var.location
  resource_group_name         = var.rg_name
  storage_account_type        = var.data_disk_type[count.index]
  create_option               = "Empty"
  disk_size_gb                = "${var.data_disk_size[count.index]}"

  lifecycle {
    ignore_changes = [ tags ]
  }
}

resource "azurerm_virtual_machine_data_disk_attachment" "datadiska" {
  count                       = "${length(var.data_disk_size)}"
  managed_disk_id             = azurerm_managed_disk.datadisk[count.index].id
  virtual_machine_id          = var.vm_id
  caching                     = "${var.data_disk_caching[count.index]}"
  lun                         = "${count.index}"
}