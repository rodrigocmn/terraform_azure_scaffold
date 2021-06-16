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

# App Service

variable "location" {
  type = string
}

variable "resource_group" {
  type = string
}

variable "app_service_plan_id" {}

variable "as_name_suffix" {
  description = "Optional suffix to be appended to App Service name"
  type        = string
  default     = ""
}
