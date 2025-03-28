module "rg01" {
  source = "../modules/resource_group"
  rg_name = "rg-demo-vnet"
  location = "eastus"
  tags = {
    "Purpose" = "Demo"
    "for" = "vnet"
  }
}

module "rg02" {
  source = "../modules/resource_group"
  rg_name = "rg-demo-vm"
  location = "eastus"
  tags = {
    "Purpose" = "Demo"
    "for" = "vm"
  }
}

module "vnet01" {
  source = "../modules/virtual_network"
  rg_name = module.rg01.rg_name
  vnet_name = "vnet-demo"
  location = "eastus"
  address_space = "10.3.0.0/16"
  subnets = [ {
    name = "snet01"
    address_prefix = "10.3.0.0/24"
  },
  {
    name = "snet02"
    address_prefix = "10.3.1.0/24"
  } ]

  tags = {
    "Purpose" = "Demo"
  }
}

module "nic01" {
  source = "../modules/network_interface"
  rg_name = module.rg02.rg_name
  location = "eastus"
  vm_name = "vmdemo"
  subnet_id = module.vnet01.subnet_id[0]
  private_ip_allocation_method = "Static"
  private_ip_address = "10.3.0.4"
}

module "vm01" {
  source = "../modules/virtual_machine"
  rg_name = module.rg02.rg_name
  location = "eastus"
  vm_name = "vmdemo"
  vm_size = "Standard_B2ms"
  admin_username = "azureuser"
  admin_password = "P@ssw0rd1234!"
  nic_id = [ module.nic01.nic_id ]
  vm_os_disk_caching = "ReadWrite"
  vm_os_disk_type = "Standard_LRS"
  image_publisher = "MicrosoftWindowsServer"
  image_offer = "WindowsServer"
  image_sku = "2019-Datacenter"
  os_license_type = "Windows_Server"
  tags = {
    "Purpose" = "Demo"
  }
}

module "datadisk01" {
  source = "../modules/data_disk"
  rg_name = module.rg02.rg_name
  location = "eastus"
  vm_name = "vmdemo"
  data_disk_size = [10, 10]
  vm_id = module.vm01.vm_id
  data_disk_caching = ["ReadWrite", "None"]
  data_disk_type = ["Standard_LRS", "Standard_LRS"]
  depends_on = [ module.vm01 ]
}