output "vm_id" {
  value = "${azurerm_virtual_machine.vm_win.id}"
  description = "The ID of the virtual machine"
}