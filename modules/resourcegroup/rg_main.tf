resource "azurerm_resource_group" "example" {  #this is resource we are taking 
  name      = var.rg_name           #this is name of rg name defining in variable
  location  = var.location          #this is location of rg n defining location name in variable
  tags      = var.tags              #dictionary of key-value pairs mentioned in variable
}
