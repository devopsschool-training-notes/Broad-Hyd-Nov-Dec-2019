git "#{Chef::Config[:file_cache_path]}/ruby-build" do
  repository 'https://github.com/scmgalaxy/chef-repo.git'
  revision 'master'
  action :sync
end
