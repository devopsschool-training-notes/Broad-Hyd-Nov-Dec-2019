Below command to create Graph

setup-x86_64.exe -q -P graphviz

terraform graph | dot -Tpng > graph.png

Variables:

	1. variables in tf file
	2. variables in tfvars 
		a. terraform.tfvars
		b. anyfilename.tfvars
	3. environment variables TF_VAR_<variablename>
	4. directly "key=value" with command line
	
	
1. main.tf and var.tf cannot have same varibale name - error
2. main.tf and terraform.tfvars - winner is terraform.tfvars
3. Between main.tf,terraform.tfvars,anyfilename.tfvars - winner is anyfilename.tfvars
4. Between main.tf,terraform.tfvars, TF_VAR_<variablename> - winner is terraform.tf
5. Between main.tf and TF_VAR_<variablename> - winner is TF_VAR_<variablename>


provider "github" {
  token        = ""
  organization = "devopsvinayacc"
}


provider "aws" {
  region     = "ap-south-1"
  access_key = ""
  secret_key = ""
}


terraform {
  backend "s3" {
    bucket = "terraform777777777777"
    key    = "vinay/test."
    region     = "ap-south-1"
  access_key = ""
  secret_key = ""

  }
}
