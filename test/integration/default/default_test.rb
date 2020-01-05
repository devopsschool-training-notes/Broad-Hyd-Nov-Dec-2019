# # encoding: utf-8
describe file('/var/www/html/index.html') do
  it { should exist }
end

describe package("httpd") do
  it { should be_installed }
end

# extend tests with metadata
control "firstcb" do
  impact 0.7
  title "Verify httpd service"
  desc "Ensures httpd service is up and running"
  describe service("httpd") do
    it { should be_enabled }
    it { should be_installed }
    it { should be_running }
  end
end

