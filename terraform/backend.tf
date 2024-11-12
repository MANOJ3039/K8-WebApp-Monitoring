terraform {
  backend "azurerm" {
    resource_group_name   = "KTest"
    storage_account_name  = "k8slearn"
    container_name        = "kstorage"
    key                    = "terraform.tfstate"
  }
}


#hay, you neesd to set set ARM_ACCESS_KEY=<Storage-Account-Key> beofre init.