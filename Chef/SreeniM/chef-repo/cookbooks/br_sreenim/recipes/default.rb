#
# Cookbook:: br_sreenim
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
file 'index.html' do
content "<marquee> Sreeni M </marquee>
end

package 'httpd'

bash 'copy index' do
  code <<-EOH
    cp index.html /var/www/html
    EOH
end

service 'starthttpd' do 
action [:enable, :start]
end

