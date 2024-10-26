# output "proxmox_ip_address_default" {
#   description = "Current IP Default"
#   value = proxmox_vm_qemu.gitlab.*.default_ipv4_address
# }

output "vm_ips_output" {
  description = "IPs of the created VMs"
  value       = [for i in range(var.vm_count) : proxmox_vm_qemu.vm-gen[i].ipconfig0]
}