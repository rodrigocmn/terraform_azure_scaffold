resource "azurerm_app_service" "app_service" {
  name                = lower(replace("AZ-${var.business_unit}-${var.application_environment}-${var.application_name}${var.as_name_suffix != "" ? "-${var.as_name_suffix}" : ""}", " ", ""))
  location            = var.location
  resource_group_name = var.resource_group
  app_service_plan_id = azurerm_app_service_plan.example.id

  site_config {
    dotnet_framework_version = "v4.0"
    scm_type                 = "LocalGit"
  }

  tags = var.tags
}