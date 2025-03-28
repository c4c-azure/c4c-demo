variable "rg_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Location of the resource group"
  type        = string
}

variable "rg_tags" {
  description = "Tags for the resource group"
  type        = map(string)
  default     = {}
}