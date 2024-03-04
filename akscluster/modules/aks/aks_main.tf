resource "azurerm_kubernetes_cluster" "aks" {
  name                = "aksterraform001"
  location            = var.location
  resource_group_name = var.rg_name
  dns_prefix          = "manu001"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "dev"
  }
}