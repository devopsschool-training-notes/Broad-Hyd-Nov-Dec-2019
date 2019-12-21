resource "aws_instance" "example" {

  ami = "${lookup(var.amis, "ap-south-1")}"

  instance_type = "t2.micro"
 
  tags = {
	Name = "${var.tag-name}"
}

}



resource "aws_iam_user" "example" {	
	count = var.numofusers
	name = "broad_NVP.${count.index}"
	}
resource "aws_iam_user" "iamuser" {

  count = length(var.users)

  name = "${var.users[count.index]}"

}