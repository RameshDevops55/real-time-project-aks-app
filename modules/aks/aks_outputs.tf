output "client_certificate" { #retrieving the client certificate for accessing an Azure Kubernetes Service (AKS) cluster. 
  value     = azurerm_kubernetes_cluster.aks.kube_config.0.client_certificate  #it's fetching the client certificate from the azurerm_kubernetes_cluster resource's kube_config attribute. The kube_config attribute typically contains a set of Kubernetes configuration settings, including the client certificate required for authenticating with the AKS cluster.
  sensitive = true    #sensitive information like credentials or certificates, which should be kept private.


}

output "kube_config" {
  value = azurerm_kubernetes_cluster.aks.kube_config_raw
  sensitive = true
}
