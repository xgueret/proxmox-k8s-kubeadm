data "github_repository" "existing_repo" {
  full_name = "${var.repository_owner}/${var.repository_name}"
}


# Define local variables for conditional logic
locals {
  repo_exists = can(data.github_repository.existing_repo.id)
}