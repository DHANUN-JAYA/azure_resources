resource "azurerm_storage_account" "example" {
  name                     = var.config["name"]
  resource_group_name      = var.config["resource_group_name"]
  location                 = var.config["location"]
  account_tier             = var.config["account_tier"]
  account_replication_type = var.config["account_replication_type"]
  account_kind             = var.config["account_kind"]
  is_hns_enabled           = var.config["is_hns_enabled"]
}