provider "github" {
  organization = "anlikereducation"
}

resource "github_membership" "member_anliksim" {
  username = "anliksim"
  role     = "admin"
}

resource "github_team" "maintainers" {
  name        = "maintainers"
  description = "Team of maintainers"
  privacy     = "secret"
}

resource "github_team_membership" "maintainers_members" {
  team_id  = github_team.maintainers.id
  username = "anliksim"
  role     = "maintainer"
}

resource "github_repository" "github-infrastructure" {
  name               = "github-infrastructure"
  description        = "State of this GitHub organisation"
  has_projects       = false
  has_issues         = true
  has_wiki           = false
  allow_merge_commit = false
  allow_rebase_merge = false
  gitignore_template = "Terraform"
}


