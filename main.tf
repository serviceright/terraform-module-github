resource "github_repository" "repository" {
  name        = local.repository_name
  description = var.service_description

  visibility  = "private"
  archive_on_destroy = true
  has_wiki = true
  has_downloads = false
  delete_branch_on_merge = true
}

# creates all the branches we need inside github
resource "github_branch" "branches" {
  count      = length(var.branches)
  repository = github_repository.repository.name
  branch     = var.branches[count.index]
  source_branch = "master"
}