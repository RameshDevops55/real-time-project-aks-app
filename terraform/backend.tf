terraform {     #Platform
  backend "azurerm" {    #provider
    resource_group_name  = "tf-storage-remote-state"  #name of the rg we created in azure.
    storage_account_name = "tfpipestacc1"    #name of the account name we created in azure.  
    container_name       = "statefiles"  #name of the con we created in azure to store the artifact 
    key                  = "dev123"      #key part of a key-value pair within a map
    subscription_id      = "8257ddef-d55a-40a7-b836-1ecf6cb569c2"  #this we taken form azure cloud
    tenant_id            = "9da458fc-a924-4e3f-a5a0-125c3b29fcd8"   #this we taken form azure cloud
  }
}
