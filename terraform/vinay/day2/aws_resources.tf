resource "aws_iam_user" "example" {
  count = "${var.numofusers}"
  name  = "broad_vinay.${count.index}"
}


resource "aws_iam_user" "iamuser" {
  count = length(var.users)
  name = "${var.users[count.index]}"
}

resource "aws_instance" "ec2_1" {
  ami = "${lookup(var.amis, "ap-south-1")}"
  instance_type = "t2.micro"
}
