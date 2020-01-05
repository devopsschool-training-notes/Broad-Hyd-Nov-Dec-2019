copyright: 2018, The Authors


control "test" do
# Checking git is installed or not.
describe package('git') do
  it { should be_installed }
end

# Checking httpd service is running
describe service ('httpd') do
  it { should be_enabled }
  it { should be_running }
end

end

