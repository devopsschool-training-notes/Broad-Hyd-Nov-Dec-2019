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


git "/ChefDir/Checkout" do
  repository "https://github.com/scmgalaxy/chef-repo"
  action :checkout
end
