variable "github_token" {
  description = "The GitHub Personal Access Token."
  type        = string
  sensitive   = true
}

variable "repository_name" {
  description = "The name of the GitHub repository."
  type        = string
  default     = "proxmox-k8s-kubeadm"
}

variable "repository_owner" {
  description = "The owner of the GitHub repository."
  type        = string
  default     = "xgueret"
}

variable "repository_description" {
  description = "A description for the GitHub repository"
  type        = string
  default     = "Managed by Terraform: HomeLab is a personal project designed to manage and automate a home laboratory environment. add k8s cluster"
}

variable "visibility" {
  description = "The visibility of the GitHub repository (public or private)."
  type        = string
  default     = "public"
}

# Variable to store the list of collaborators with their respective permissions
variable "collaborators" {
  type = map(string)
  description = "A map of collaborators where the key is the GitHub username and the value is the permission level"
}