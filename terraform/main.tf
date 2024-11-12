provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "MyR" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "mcluster" {
  name                = var.aks_name
  location            = azurerm_resource_group.MyR.location
  resource_group_name = azurerm_resource_group.MyR.name
  kubernetes_version  = var.kubernetes_version

  dns_prefix          = "${var.aks_name}-dns"  

  default_node_pool {
    name       = "default"
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = "SystemAssigned"  
  }

  tags = {
    environment = var.environment
  }
}
