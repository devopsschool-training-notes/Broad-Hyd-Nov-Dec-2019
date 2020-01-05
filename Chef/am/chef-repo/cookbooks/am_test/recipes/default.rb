#
# Cookbook:: am_test
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

package 'tomcat'

service 'tomcat_enable_start' do 
	action [:enable,:start]
end
