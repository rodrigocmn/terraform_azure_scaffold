resource "azurerm_app_service_plan" "service_plan" {
  name                = lower(replace("AZ-${var.business_unit}-${var.application_environment}-${var.application_name}${var.sp_name_suffix != "" ? "-${var.sp_name_suffix}" : ""}", " ", ""))
  location            = var.location
  resource_group_name = var.sp_resource_group

  sku {
    tier = var.sp_tier
    size = var.sp_size
  }
}