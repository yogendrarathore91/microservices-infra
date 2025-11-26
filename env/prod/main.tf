module "rg" {
source = "../../module/resource_group"
rgs = var.rgs
  
}

module "acr" {
source = "../../module/acr"
acr = var.acr
}

module "aks" {
  source = "../../module/aks"
  aks    = var.aks
}

module "sql" {
  source      = "../../module/sql"
  sql_servers = var.sql_servers
  sql_dbs     = var.sql_dbs
}


module "key_vault" {
  source     = "../../module/key_vault"
  key_vaults = var.key_vaults
}
