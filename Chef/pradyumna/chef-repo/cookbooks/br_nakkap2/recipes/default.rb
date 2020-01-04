#
# Cookbook:: br_nakkap2
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

file 'file4.txt' do

	mode	755

	owner	"ec2-user"

	action  :create

end
