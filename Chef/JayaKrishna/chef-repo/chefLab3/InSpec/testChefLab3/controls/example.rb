# copyright: 2018, The Authors

title "sample section"

# you can also use plain tests
describe file("/tmp") do
  it { should be_directory }
end

# you add controls here
control "tmp-1.0" do                        # A unique ID for this control
  impact 0.7                                # The criticality, if this control fails.
  title "Create /tmp directory"             # A human-readable title
  desc "An optional description..."
  describe file("/tmp") do                  # The actual test
    it { should be_directory }
  end
end

#Check if HTTPD is installed or not
describe package('httpd') do
  it { should be_installed }
end

#Check if HTTPD service is up or not
describe service 'httpd' do
  it { should be_enabled }
  it { should be_running }
end

#Check if GIT is installed
describe package('git') do
  it { should_not be_installed }
end
#Check if the file index.html exists
describe file('/index.html') do
 it { should exist}
end
