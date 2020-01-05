#
# Cookbook:: Shtl-cb2
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reservedi


directory 'ChefDir' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

package 'git'


git "ChefDir1" do
  repository "https://github.com/scmgalaxy/chef-repo"
  action :sync
end
