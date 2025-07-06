terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.29.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
subscription_id = "fb1023fa-927d-4d73-950b-c4a2d62ed94f"
}
