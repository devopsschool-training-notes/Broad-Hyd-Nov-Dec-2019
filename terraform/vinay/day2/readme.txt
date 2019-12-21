Below command to create Graph

terraform graph | dot -Tpng > graph.png

Variables:

	1. variables in tf file
	2. variables in tfvars 
		a. terraform.tf
		b. anyfilename.tf
	3. environment variables TF_VAR_<variablename>
	4. directly "key=value" with command line
