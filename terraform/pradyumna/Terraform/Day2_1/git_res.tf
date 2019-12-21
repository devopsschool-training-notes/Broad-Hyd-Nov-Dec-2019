variable reponame {
	type = string

description = "This is for demo of string variable"

default = "PRA_FROM_GITRES"

}
resource "github_repository" "Pra_terraform" {
  name        = var.reponame
  description = "My Pra_terraform"

  private = false
}