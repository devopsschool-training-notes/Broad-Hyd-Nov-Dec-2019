package 'git'

git 'MyClone2' do
    repository "https://github.com/scmgalaxy/chef-repo"
    action :sync
end
