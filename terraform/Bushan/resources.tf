resource "github_repository" "example" {
  name        = "${var.reponame}"
  description = "My awesome codebase"
  private = false
}