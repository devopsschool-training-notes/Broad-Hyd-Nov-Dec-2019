resource "aws_iam_user" "example" {
  count = "${var.numofusers}"
  name  = "broad.${count.index}"
}
