# Common information

variable "application_name" {
  description = "Name of the application that will be running on this VM"
  type        = string
}

variable "application_environment" {
  description = "Target environment for the application (i.e. devevelopment, test, production)"
  type        = string
}

variable "business_unit" {
  description = ""
  type        = string
}

variable "tags" {
  description = "Tags to be attached to the resource group"
  type        = map(any)
  default     = {}
}

# Resource Group

variable "location" {
  description = "Resource Group location"
  type        = string
}

variable "rg_name_suffix" {
  description = "Optional Resource Group name suffix"
  type        = string
  default     = ""
}