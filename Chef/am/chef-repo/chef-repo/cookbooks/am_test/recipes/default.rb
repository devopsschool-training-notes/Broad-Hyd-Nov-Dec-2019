#
# Cookbook:: am_test
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.

package 'tomcat'

service 'tomcat' do
	action [:enable, :start]
end
