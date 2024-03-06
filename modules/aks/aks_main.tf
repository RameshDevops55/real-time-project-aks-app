resource "azurerm_kubernetes_cluster" "aks" {          #this is resource  
  name                = "aksterraform001"              #this is name of resource
  location            = var.location           #location of resource taking from variable
  resource_group_name = var.rg_name         #name of resource group from variable
  dns_prefix          = "manu001"            # coustom name of aks resource

  default_node_pool {
    name       = "default"                #name of the node pool as default
    node_count = 2                        #node counts we wanted or we can change as per requirements
    vm_size    = "Standard_D2_v2"           #size of vm or we can chane as per requirements
  }

  identity {
    type = "SystemAssigned"           #Azure will automatically manage the identity for the cluster
  }

  tags = {
    Environment = "dev"                       #this is dev env or we can change to any env as per req.
  }
}
