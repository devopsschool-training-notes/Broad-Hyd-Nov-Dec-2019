#
# Cookbook:: Bushan2
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
include_recipe '::service'
file 'index.html' do
  content                    "<h1>Welcome to DevOpsSchool Chef Class<h1>"
end

install a package called httpd 
package 'httpd' 
bash 'copy index' do
  code <<-EOH
    cp index.html /var/www/html
    EOH
end
