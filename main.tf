variable "rg" {
   }
terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "5.0.1"
    }
  }
}
provider "azurerm" {
  features {
    
  }
}

resource "azurerm_resource_group" "ankita" {
    for_each =var.rg
      name = each.key
  location = each.value.location1
}
