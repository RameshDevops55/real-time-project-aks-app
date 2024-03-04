data "azurerm_client_config" "current" {}

module "resource_group" {    
  source    = "../modules/resourcegroup"
  rg_name   = var.rg_name
  location  = var.location  
  tags      = var.tags
}

module "aks" {    
  source    = "../modules/aks"
  depends_on = [ module.resource_group ]
  rg_name   = var.rg_name
  location  = var.location  
}







