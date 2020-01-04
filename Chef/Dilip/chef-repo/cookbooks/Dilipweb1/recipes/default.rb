#
# Cookbook:: Dilipweb1
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved

package 'httpd'

 file 'index.html' do
  content                    "<h1>Welcome to DevOpsSchool Chef Class cook 2<h1>"
end



bash 'copy index' do
  code <<-EOH
    cp index.html /var/www/html
    EOH
end

