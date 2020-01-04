#
# Cookbook:: Dilipweb
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserve


package 'httpd'

 file 'index.html' do
  content                    "<h1>Welcome to DevOpsSchool Chef Class<h1>"
end



bash 'copy index' do
  code <<-EOH
    cp index.html /var/www/html
    EOH
end

