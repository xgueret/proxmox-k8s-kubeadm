variable "pm_api_url" {
  description = "URL of the proxmox api"
  type        = string
}

variable "pm_api_token_id" {
  description = "ID of the token API"
  type        = string
}

variable "pm_api_token_secret" {
  description = "API token seccret"
  type        = string
}

variable "project_description" {
  description = "Project description"
  type          = string
  default        = "Vm for gitlab" 
}

variable "vm_target_node" {
  description = "Target node name"
  type        = string
  default = "xgtpve"
}

variable "vm_count" {
  description = "Number of VMs to create"
  type        = number
  default     = 3
}


variable "vm_name_prefix" {
  description = "value of the vm name"
  type         = string
  default       = "k8s-vm"
}

variable "vm_baseid" {
  description = "value of the vm id"
  type          = number
  default        = 4000
}

# Le numéro de départ pour les IPs
variable "vm_ip_start" {
  description = "The starting number for the IP addresses (e.g., 20)"
  type        = number
  default     = 40
}


variable "vm_template" {
  description = "value of the vm template name"
  type          = string
}

variable "vm_memory" {
  description = "value of the vm memory size (in MiB)"
  type        = number
  default     = 2048
} 

variable "vm_cpu_cores" {
  description = "Number of CPU cores"
  type        = number
  default     = 1
}

variable "vm_netmask" {
  description = "The subnet mask for the VM"
  type        = string
  default     = "24"
}

variable "vm_gateway" {
  description = "The default gateway for the VM"
  type        = string
  default     = "192.168.1.254"
}

variable "vm_disk0_size" {
  description = "Size of the primary disk (e.g., '30G')"
  type        = string
  default     = "30G"
}

variable "vm_disk0_storage" {
  description = "Name of the storage for the primary disk"
  type        = string
  default     = "local-lvm"
}
