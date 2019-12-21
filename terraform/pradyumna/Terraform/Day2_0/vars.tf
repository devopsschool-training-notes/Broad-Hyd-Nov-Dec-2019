variable "tag-name" {

type = string

description = "This is for demo of string variable"

default = "IWS_NVP_TF_EC2"

}

variable "numofusers" {	
	type = number
	description = "This is for demo of number variable"
	default = 3
	}
variable "users" {	
	type = "list"
	default = ["nvp_user1", "nvp_user2", "nvp_user3"]
	}
variable "amis" {	
	type = "map"
	default = {
	"us-east-1" = "ami-b374d5a5"
	"us-west-2" = "ami-4b32be2b"
	"ap-south-1" = "ami-5b673c34"
	}
	}

variable "validate" {

  type = bool

  description = "This is for demo of bool variable"

  default = true

}