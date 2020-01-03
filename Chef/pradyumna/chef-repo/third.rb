file 'file1.txt' do
	action [:create, :touch]
end

package 'git'

git 'MyClone2' do
    repository "https://github.com/scmgalaxy/chef-repo"
    action :sync
end
