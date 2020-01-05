#
# Cookbook:: pola1
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
script 'exercise4' do
  interpreter "bash"
  code <<-EOH
   sudo mkdir /tmp/pola
    EOH
end
