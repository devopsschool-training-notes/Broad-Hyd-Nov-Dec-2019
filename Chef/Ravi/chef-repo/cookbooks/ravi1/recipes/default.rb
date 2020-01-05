#
# Cookbook:: ravi1
# Recipe:: default
#

file 'index.html' do
  content                    "<h1>Welcome to First Bench Slleping guys<h1>"
end

package 'httpd'

bash 'copy index' do
  code <<-EOH
    cp index.html /var/www/html
    EOH
end

service 'httpd' do
  action               [ :enable, :start ]
end

# Copyright:: 2020, The Authors, All Rights Reserved.
