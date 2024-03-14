data "azurerm_client_config" "current" {}

module "resource_group" {    #this is resource we are using 
  source    = "../modules/resourcegroup"   #indicate take this source from that perticular location and giving that path 
  rg_name   = var.rg_name         #take this rgname form variables 
  location  = var.location     #take this location of rg form variables 
  tags      = var.tags      #take this tags of rg form variables 
}

module "aks" {        #this is resource we are using 
  source    = "../modules/aks"     #indicate take this source from that perticular location and giving that path 
  depends_on = [ module.resource_group ]   #it will tells after creating rg it will creates 
  rg_name   = var.rg_name   #take this rgname form variables
  location  = var.location   #take this location of rg form variables 
}







