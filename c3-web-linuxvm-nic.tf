resource "azurerm_network_interface" "web_linuxvm_nic" {
  for_each            = var.web_vm_data_map
  name                = "${local.prefix}-web-${each.key}-nic"
  location            = data.azurerm_resource_group.azure_rg.location
  resource_group_name = data.azurerm_resource_group.azure_rg.name

  ip_configuration {
    name                          = "weblinux-nic-ipconf"
    subnet_id                     = azurerm_subnet.web_subnet.id
    private_ip_address_allocation = "Dynamic"
  }
  tags = local.common_tags
}