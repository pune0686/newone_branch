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
