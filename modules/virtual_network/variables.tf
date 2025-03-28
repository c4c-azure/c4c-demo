variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "location" {
  description = "Location of the virtual network"
  type        = string
}

variable "rg_name" {
  description = "Name of the resource group"
  type        = string
}

variable "address_space" {
  description = "Address space for the virtual network"
  type        = string
}

variable "subnets" {
  description = "List of subnets to create in the virtual network"
  type = list(object({
    name            = string
    address_prefix  = string
  }))
}

variable "tags" {
  description = "Tags for the virtual network"
  type        = map(string)
  default     = {}
}