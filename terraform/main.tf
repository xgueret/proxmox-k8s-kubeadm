resource "proxmox_vm_qemu" "vm-gen" {
  count       = var.vm_count
  name        = "${var.vm_name_prefix}-${count.index + 1}"
  target_node = var.vm_target_node
  desc        = var.project_description
  vmid        = var.vm_baseid + count.index  # Be sure that the id is unique!
  clone       = var.vm_template

  agent   = 1
  os_type = "cloud-init"
  cores   = var.vm_cpu_cores
  sockets = 1
  cpu     = "host"
  memory  = var.vm_memory
  scsihw  = "virtio-scsi-pci"
  bootdisk = "scsi0"
  # Utilisation de la base IP extraite de vm_gateway
  ipconfig0 = "ip=${join(".", slice(split(".", var.vm_gateway), 0, 3))}.${var.vm_ip_start + count.index}/${var.vm_netmask},gw=${var.vm_gateway}"


  # scsi0 disk
  disk {
    slot    = "0"
    size    = var.vm_disk0_size
    type    = "scsi"
    storage = var.vm_disk0_storage
  }
  
  # vmbr0 network
  network {
    model  = "virtio"
    bridge = "vmbr0"
  }

  # Lifecycle pour ignorer les changements de réseau
  lifecycle {
    ignore_changes = [
      network,  
    ]  
  }

  # Timeouts pour les opérations
  timeouts {
    create = "10m"
    update = "5m"
    delete = "5m"
  }

}
