output "web_lb_public_ip_address" {
  description = "Web Load Balancer Public Address"
  value       = azurerm_public_ip.weblb_pip.ip_address
}
