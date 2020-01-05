cribe package("httpd") do
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
test for recipe firstcb::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

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
