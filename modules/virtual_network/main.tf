resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.rg_name
  address_space       = [var.address_space]

  dynamic "subnet" {
    for_each = var.subnets
    content {
      name                  = subnet.value.name
      address_prefixes      = [subnet.value.address_prefix]
    }
  }

  tags = var.tags

  lifecycle {
    ignore_changes = [ tags ]
  }
}