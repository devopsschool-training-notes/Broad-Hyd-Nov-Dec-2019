#
# Cookbook:: web
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe '::service'
file 'index.html' do
  content                    "<h1>Welcome to DevOpsSchool Chef Class<h1>"
end
