resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = local.common_tags
}

resource "azurerm_storage_container" "container" {
  name                 = var.container_name
  storage_account_name = azurerm_storage_account.storage_account.name
}
