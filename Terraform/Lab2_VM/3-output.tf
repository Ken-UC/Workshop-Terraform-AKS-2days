# https://www.terraform.io/language/values/outputs

output "ip_prive_vm" {
  value = azurerm_linux_virtual_machine.terra_vm.private_ip_address
}

output "ip_pub_vm" {
  value = azurerm_public_ip.terra_pip.ip_address
}
