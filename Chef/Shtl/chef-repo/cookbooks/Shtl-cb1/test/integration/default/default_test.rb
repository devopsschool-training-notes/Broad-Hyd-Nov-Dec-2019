# InSpec test for recipe Shtl-cb1::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { should_not be_listening }
end

control "world-1.0" do                                # A unique ID for this control
  impact 1.0                                          # Just how critical is
  title "Index file Check"                                 # Readable by a human
  desc "Index file check'." # Optional description
  

describe file('index.html') do                       # The actual test
   its('link_path') { should eq '/var/www/html' }
  end  

describe package('httpd') do
  it { should be_installed }
end 

describe service('httpd') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
                                              
end











