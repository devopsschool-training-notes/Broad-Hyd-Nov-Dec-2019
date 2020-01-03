  variable "ShtlReopen" {
  type = string
  description = "This is for demo of string variable"
  default = "Shtlday3-broad"
}

resource "github_repository" "ShtlRepo1" {
  name        = "${var.ShtlReopen}"
  description = "My awesome codebase - Day2"
  private = false
}
