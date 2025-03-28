variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "location" {
  description = "Location of the virtual machine"
  type        = string
}

variable "rg_name" {
  description = "Name of the resource group"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet where the VM will be deployed"
  type        = string
}

variable "private_ip_allocation_method" {
  description = "Private IP address allocation method"
  type        = string
  default     = "Dynamic"
}

variable "private_ip_address" {
  description = "Private IP address for the VM"
  type        = string
  default     = null
}

