# Variable common to all modules
locals {
  application_name = "downtime_api"
  business_unit    = "smart"
}

# Resource Group
module "smart_resource_group" {
  source                  = "../../common-modules/azure/group/resource_group"
  application_environment = var.env
  application_name        = local.application_name
  business_unit           = local.business_unit
  location                = var.region
}

# Service Plan
module "smart_app_service_plan" {
  source                  = "../../common-modules/azure/compute/app_service_plan"
  application_environment = var.env
  application_name        = local.application_name
  business_unit           = local.business_unit
  location                = var.region
  sp_resource_group       = module.smart_resource_group.rg_name
  sp_size                 = var.sp_size
  sp_tier                 = var.sp_tier
}

# Downtime API App Service
module "smart_app_service" {
  source                  = "../../common-modules/azure/compute/app_service"
  app_service_plan_id     = module.smart_app_service_plan.service_plan_id
  application_environment = var.env
  application_name        = local.application_name
  business_unit           = local.business_unit
  location                = var.region
  resource_group          = module.smart_resource_group.rg_name
}

