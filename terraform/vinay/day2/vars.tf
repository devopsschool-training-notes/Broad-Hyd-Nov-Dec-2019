

##############  AWS ####################

variable "numofusers" {
  type = number
  description = "This is for demo of number variable"
  default = 3
}

variable "users" {
    type    = "list"
    default = ["vuser1", "vuser2", "vuser3"]
}

variable "amis" {
  type = "map"
  default = {
    "us-east-1" = "ami-b374d5a5"
    "us-west-2" = "ami-4b32be2b"
    "ap-south-1" = "ami-5b673c34"

  }
}

################ Git-Hub   #################

variable "reponame" {
  type = string
  description = "This is for demo of string variable"
  default = "day3-broad"
}

variable "validate" {
  type = bool
  description = "This is for demo of bool variable"
  de
