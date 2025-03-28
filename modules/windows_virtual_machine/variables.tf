variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "location" {
  description = "Location of the virtual machine"
  type        = string
}

variable "vm_size" {
  description = "Size of the virtual machine"
  type        = string
}

variable "rg_name" {
  description = "Name of the resource group"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the virtual machine"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the virtual machine"
  type        = string
  sensitive   = true
}

variable "vm_os_disk_caching" {
  description = "Caching type for the OS disk"
  type        = string
  default     = "ReadWrite"
}

variable "vm_os_disk_storage_account_type" {
  description = "Storage account type for the OS disk"
  type        = string
  default     = "Standard_LRS"
}

variable "image_publisher" {
  description = "Publisher of the image"
  type        = string
}

variable "image_offer" {
  description = "Offer of the image"
  type        = string
}

variable "image_sku" {
  description = "SKU of the image"
  type        = string
}

variable "os_license_type" {
  description = "License type for the image"
  type        = string
  default     = "Windows_Client"
}

variable "vm_tags" {
  description = "Tags for the virtual machine"
  type        = map(string)
  default     = {}
}

variable "nic_id" {
  description = "Network Interface ID for the virtual machine"
  type        = string
}