output "repository_full_name" {
  value = github_repository.repository.full_name
}

output "repository_clone_url" {
  value = github_repository.repository.ssh_clone_url
}

output "repository_html_url" {
  value = github_repository.repository.html_url
}

output "repository_branches" {
  value = github_branch.branches[*].branch
}