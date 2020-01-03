file 'index.html' do
  content '<html>This is a placeholder for Shtl home page.</html>'
  mode '777'
  owner 'ec2-user'
  group 'root'
  action :touch
end

directory 'ChefDir' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

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

group 'ChefGrp'

user 'ChefUser' do
  comment 'A random user'
  uid 1234
  password 'test123'
end

log 'logFile' do
  message 'Error Occured!!'
  level :info
end
