#
# Cookbook:: br_nakkap3
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

user 'ec2-pradyu' do

	comment	'new user created'

	uid	6789

	shell '/bin/bash/'

	username 'ec2-pradyu'

end
