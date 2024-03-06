variable "rg_name" {   #resource we are using
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
  type = string  #key-value pair
  default = "aks_terraform001"   #Custom name of rg
}

variable "location" {   #to define location of the rg
    description =  "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."
    type = string   #key-value pair
    default = "uksouth"   #Custom Location  of rg
}

variable "tags" {
    description =  "(Optional) A mapping of tags which should be assigned to the Resource Group."
    type = map(string) #data type of the variable
    default = {      #value for the variable
    }
}
