#
# Cookbook:: br_nakkap1
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.



file 'index.html' do



  content                    "<h1>Welcome to DevOpsSchool Chef Class-Pradyumna<h1>"



end
package 'httpd'
bash 'copy index' do



  code <<-EOH



    cp index.html /var/www/html



    EOH



end

service 'httpd' do

	action 	[:enable, :start]

end
