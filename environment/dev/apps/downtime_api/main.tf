module "downtime_api" {
  source = "../../../../application/downtime_api"
  env = "dev"
  region = "West Europe"
  sp_size = ""
  sp_tier = ""
}