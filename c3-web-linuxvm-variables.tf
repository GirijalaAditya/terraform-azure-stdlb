variable "web_vm_data_map" {
  description = "Web VM Map"
  type        = map(string)
  default = {
    "vm1" = "1022"
    "vm2" = "2022"
  }
}