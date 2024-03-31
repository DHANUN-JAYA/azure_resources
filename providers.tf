

terraform{
  required_providers {
    azurerm={
      source="hashicorp/azurerm"
      version="2.93.0"
    }
  }
   backend "azurerm" {
    resource_group_name  = "nihla"
    storage_account_name = "nihala"
    container_name       = "demo"
    key                  = "backend_statefile.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id= var.subscription_id
  client_id=var.client_id
  client_secret =var.client_secret
  tenant_id=var.tenant_id

}


