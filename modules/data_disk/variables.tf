variable "disk_name" {
  description = "Name of the data disk"
  type        = string
}

variable "location" {
  description = "Location of the data disk"
  type        = string
}

variable "rg_name" {
  description = "Name of the resource group"
  type        = string
}

variable "vm_name" {
  description = "Name of the virtual machine"
  type        = string
}

variable "data_disk_size" {
  description = "Size of the data disk in GB"
  type        = list(number)
  // default     = [128,10]
}

variable "data_disk_type" {
  description = "Type of the data disk"
  type        = list(string)
  // default     = ["Standard_LRS", "Standard_LRS"]
}

variable "vm_id" {
  description = "ID of the virtual machine"
  type        = string
}

variable "data_disk_caching" {
  description = "Caching type for the data disk"
  type        = list(string)
  // default     = ["ReadWrite", "ReadOnly"]
}
