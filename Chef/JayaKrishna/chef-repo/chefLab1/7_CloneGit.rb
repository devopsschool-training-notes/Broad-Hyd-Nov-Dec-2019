package 'git'

git 'MyGitClone' do
    repository "https://github.com/scmgalaxy/chef-repo"
    action :sync
end
