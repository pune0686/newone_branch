variable "testresgp" {
  description = "this is a resource group"
  type = list(string)
  default = ["testresgp1", "testresgp2", "testresgp3", "testresgp4", "testresgp5"]
  }

  resource "azurerm_resource_group" "resgp1" {
  count = 5
  name     = var.testresgp[count.index]
location = "West US"
}

resource "azurerm_resource_group" "newone-rg" {
  name     = "new-rgs"
  location = "East US"
}
resource "azurerm_storage_account" "newonestg" {
  name                     = "newstg"   # must be globally unique
  resource_group_name      = azurerm_resource_group.newone-rg.name
  location                 = azurerm_resource_group.newone-rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "newcontainer" {
  name                  = "mycontainer"
  storage_account_name  = azurerm_storage_account.newonestg.name
  container_access_type = "private"  # Options: private, blob, container
}

