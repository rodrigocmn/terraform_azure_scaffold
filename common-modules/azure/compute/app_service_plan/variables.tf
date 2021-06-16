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

# Service Plan

variable "sp_name_suffix" {
  default = ""
}

variable "sp_resource_group" {}

variable "location" {}

variable "sp_tier" {}

variable "sp_size" {}