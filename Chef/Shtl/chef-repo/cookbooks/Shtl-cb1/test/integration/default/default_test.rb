# InSpec test for recipe Shtl-cb1::default

control  "world-1.0" do                                # A unique ID for this control
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

                             











