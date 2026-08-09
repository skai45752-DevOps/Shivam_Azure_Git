vms = {
    vm1 = {
  name                = "vm-skj"
  resource_group_name = "rg-shivam"
  location            = "central india"
  size                = "Standard_D4_v5"
  admin_username      = "Devopsadmin987"
  admin_password      = "Shivam@987456"
  subnet_name         = "forntendsubnet"
  public_ip_name      = "forntendpip"
  virtual_network_name = "vnetsj"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
    nic_name = "nicshivam"

  
    }

}