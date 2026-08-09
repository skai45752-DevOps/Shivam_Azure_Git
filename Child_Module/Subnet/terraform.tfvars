azurerm_subnet = {
    subnet1 = {
  name                 = "forntendsubnet"
  resource_group_name  = "rg-shivam"
  virtual_network_name = "vnetsj"
  address_prefixes     = ["10.0.1.0/24"]
    }

  subnet2 = {
  name                 = "backendsubnet"
  resource_group_name  = "rg-shivam"
  virtual_network_name = "vnetsj"
  address_prefixes     = ["10.0.2.0/24"]
    }  
}