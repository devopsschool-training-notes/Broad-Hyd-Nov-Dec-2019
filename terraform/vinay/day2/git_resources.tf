resource "github_repository" "web" {
  name        = "${var.validate}"
  description = "My awesome codebase"
  private = false
}
