 variable "reponame" {
  type = string
  description = "This is for demo of string variable"
  default = "HarishBR"
}



resource "github_repository" "example" {
  name        = "${var.reponame}"
  description = "My awesome codebase"
  private = false
}

provider "aws" {
  region     = ""
  access_key = ""
  secret_key = ""
}

variable "amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-b374d5a5"
    "us-west-2" = "ami-4b32be2b"
    "ap-south-1" = "ami-5b673c34"
    
  }
}


resource "aws_instance" "example" {
  ami = "${lookup(var.amis, "ap-south-1")}"
  instance_type = "t2.micro"
}
