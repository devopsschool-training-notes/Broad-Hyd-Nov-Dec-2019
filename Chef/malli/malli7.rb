git 'test-repo' do
  repository 'https://github.com/scmgalaxy/chef-repo/tree/master/cookbooks'
  revision 'master'
  action :sync
end

