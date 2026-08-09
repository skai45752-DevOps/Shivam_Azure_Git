data "azurerm_subnet" "datasubnet" {
    for_each           = var.nics
  name                 = each.value.subnet_name
  virtual_network_name = each.value.virtual_network_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_public_ip" "datapip" {
    for_each          = var.nics
  name                = each.value.pip_name
  resource_group_name = each.value.resource_group_name
}



resource "azurerm_network_interface" "nicsj" {
  for_each            = var.nics
  name                = each.value.nic_name
  location            = each.value.nic_location
  resource_group_name = each.value.resource_group_name

  ip_configuration {
    name                          = "classic"
    subnet_id                     = data.azurerm_subnet.datasubnet[each.key].id
    public_ip_address_id          = data.azurerm_public_ip.datapip[each.key].id
    private_ip_address_allocation = "Dynamic"
  }
}