azurerm_public_ip = {
    pip1 = {
  name                = "forntendpip"
  resource_group_name = "rg-shivam"
  location            = "central india"
  allocation_method   = "Static"
    }

  pip2 = {
  name                = "backendpip"
  resource_group_name = "rg-shivam"
  location            = "central india"
  allocation_method   = "Static"
    }  
}