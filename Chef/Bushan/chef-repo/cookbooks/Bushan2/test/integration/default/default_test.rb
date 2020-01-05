# InSpec test for recipe Bushan2::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

control "world-1.0" do                                # A unique ID for this control
  impact 1.0                                          # Just how critical is
  title "Hello World"                                 # Readable by a human
  desc "Text should include the words 'hello world'." # Optional description
  describe file('index.html') do                       # The actual test
      its('link_path') { should eq '/var/www/html' }
  end                                                 # rest is just metadata, but it's a good habit to get into.
describe package('httpd') do
  it { should be_installed }
end
describe service('httpd') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
end

