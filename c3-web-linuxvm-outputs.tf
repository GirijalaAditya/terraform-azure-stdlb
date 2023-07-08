output "web_linuxvm_private_ip_address" {
  description = "Web Linux VM Private IP Addresses"
  value       = [for vm in azurerm_linux_virtual_machine.web_linuxvm : vm.private_ip_address]
}

output "web_linuxvm_private_ip_address_map" {
  description = "Web Linux VM Private IP Addresses"
  value       = { for vm in azurerm_linux_virtual_machine.web_linuxvm : vm.name => vm.private_ip_address }
}
