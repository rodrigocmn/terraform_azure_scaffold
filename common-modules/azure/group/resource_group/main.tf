resource "azurerm_resource_group" "resource_group" {
  name     = lower(replace("AZ-${var.business_unit}-${var.application_environment}-${var.application_name}${var.rg_name_suffix != "" ? "-${var.rg_name_suffix}" : ""}", " ", ""))
  location = var.location
  tags     = var.tags
}