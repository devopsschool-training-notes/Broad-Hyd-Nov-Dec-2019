resource "aws_instance" "Pradyumna" {
  ami = "ami-5b673c34"
  instance_type = "t2.micro"
  tags = {
   Name="Pradyumna_Terraform"
}
}