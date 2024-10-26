resource "github_repository" "repo" {
  name        = var.repository_name
  description = var.repository_description
  visibility  = var.visibility
}

# Add multiple collaborators to the repository using for_each
resource "github_repository_collaborator" "a_repo_collaborator" {
  for_each   = var.collaborators
  repository = var.repository_name
  username   = each.key
  permission = each.value  # Permission level for the collaborator (pull, push, or admin)

  depends_on = [github_repository.repo]
  
}