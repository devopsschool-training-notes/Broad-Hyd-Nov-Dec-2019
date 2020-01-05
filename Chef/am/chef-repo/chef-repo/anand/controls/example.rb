# copyright: 2018, The Authors
control "git" do
	impact 0.2
	title "check if git is installed"
	describe package('git') do
		it {should be_installed}
	end
end


control 'httpd' do
	impact 0.2
	title "check if httpd is running"
	describe package('httpd') do
		it {should be_installed}
		it {should be_running}
	end
end
