variable "rg_name" {       #this is the resource we are taking
  description = "The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."  
  default = "aks_terraform001"   #custom name of the rg 
}

variable "location" {    #this is the resource location we are taking
    description =  "(Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created."    
    default = "uksouth"  #custom name of the rg location
}

variable "tags" {  #mentioning tags for rg 
    description =  "(Optional) A mapping of tags which should be assigned to the Resource Group."
    default = {  
      "source" = "terraform"   # attribute that represent the source of the data 
      "env"    = "dev"   #intended for use in a development environment.
      "cost"   = "163"     #cost of the resources
      "dept"   = "finance"   # the finance department is associated with this resource
    }
}
variable "ARM_SUBSCRIPTION_ID"  {}    #this will use to  create the resources in that id  by using pipelines 
variable "ARM_TENANT_ID"        {}      #this will use to  create the resources in that id  by using pipelines 
variable "ARM_CLIENT_ID"        {}      #this will use to  create the resources in that id  by using pipelines 
variable "ARM_CLIENT_SECRET"    {}       #this will use to  create the resources in that id  by using pipelines 
