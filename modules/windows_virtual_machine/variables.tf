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
  default     = "ReadWrite" // Possible values: None, ReadOnly, ReadWrite
}

variable "vm_os_disk_type" {
  description = "Storage account type for the OS disk"
  type        = string
  default     = "Standard_LRS" // Possible values: Standard_LRS, Premium_LRS, StandardSSD_LRS, UltraSSD_LRS
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
  default     = "None" // Possible values: Windows_Server, Windows_Client, None
}

variable "tags" {
  description = "Tags for the virtual machine"
  type        = map(string)
  default     = {}
}

variable "nic_id" {
  description = "Network Interface ID for the virtual machine"
  type        = list(string)
}