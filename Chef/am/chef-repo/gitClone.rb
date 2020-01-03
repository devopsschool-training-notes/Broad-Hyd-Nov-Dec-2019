bash 'git_clone' do
	code <<-EOH
	mkdir red
	cd red
	git clone https://github.com/scmgalaxy/chef-repo/tree/master/cookbooks
	EOH
end
