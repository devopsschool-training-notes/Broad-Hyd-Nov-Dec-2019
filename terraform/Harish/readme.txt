 variable "reponame" {
  type = string
  description = "This is for demo of string variable"
  default = "HarishBR"
}

# Configure the GitHub Provider
provider "github" {
  token        = "933cd8213a9d3251cc6a7cc7076206a99273de37"
  organization = "devopsschool-lab-exercise"
}

resource "github_repository" "example" {
  name        = "${var.reponame}"
  description = "My awesome codebase"
  private = false
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAZDCVQDIX3E4LAPYC"
  secret_key = "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"
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
