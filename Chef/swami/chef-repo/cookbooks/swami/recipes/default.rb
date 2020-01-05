include_recipe '::swami'
service 'httpd' do
  action               [ :enable, :start ]
end#
# Cookbook:: swami
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
