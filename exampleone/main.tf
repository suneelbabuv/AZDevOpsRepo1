terraform { 
  backend "azure" {} 
  }

# Configure the Azure Provider
provider "azurerm" {
  # whilst the `version` attribute is optional, we recommend pinning to a given version of the Provider
  #version = "=3.0.0"
  features {}
}

# Create a resource group
resource "azurerm_resource_group" "example" {
  name     = "RGfromCICD"
  location = "East US"
}
