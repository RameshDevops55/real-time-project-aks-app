terraform {
  backend "azurerm" {
    resource_group_name  = "tf-storage-remote-state"
    storage_account_name = "tfpipestacc1"
    container_name       = "statefiles"
    key                  = "dev123"
    subscription_id      = "8257ddef-d55a-40a7-b836-1ecf6cb569c2"
    tenant_id            = "9da458fc-a924-4e3f-a5a0-125c3b29fcd8"
  }
}
