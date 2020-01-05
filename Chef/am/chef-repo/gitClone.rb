bash 'git_clone' do
	code <<-EOH
	mkdir red
	cd red
	git clone https://github.com/chef-cookbooks/habitat.git
	EOH
end
