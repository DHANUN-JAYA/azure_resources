locals {
  config_data = jsondecode(file("${path.module}/configuration/config.json"))
}

module "storage_account" {
  source = "./gen2_storage_account/"

  for_each = { for entry in local.config_data["storage_account"] : entry["account_name"] => entry }

  config = each.value
}
#module "azurerm_key_vault" {
#  source = "./modules/key_vault"
#
#  for_each = { for entry in local.config_data["azurerm_key_vault"] : entry["location"] => entry }
#
#  config = each.value
#  tenant_id = var.tenant_id
#}
#module "azurerm_storage_container" {
#  source = "./modules/storage_container"
#
#  for_each = { for entry in local.config_data["azurerm_storage_container"] : entry["name"] => entry }
#
#  config = each.value
#  depends_on = [module.storage_account]
#}

#module "azurerm_storage_account" {
#  source = "./modules/gen2_storage_account"
#
#  for_each = { for entry in local.config_data["azurerm_storage_account"] : entry["name"] => entry }
#
#  config = each.value
#
#}
















