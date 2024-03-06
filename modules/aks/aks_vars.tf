variable "location" {
    description =  "(Required) Keyvault Location"
    default = "uksouth"  #it describes location of the AKS resource
}

variable "rg_name" {
    description =  "Name of the Resource Group"
    default = "aks_terraform001"  #it describes custom name of the resource group
}
