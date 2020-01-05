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

describe package('git') do
  it { should be_installed }
end


describe file('/var/www/html/index.html') do
  it { should exist }
end

describe service('httpd') do
    it { should be_running }
end

describe port('8080') do
  it { should be_listening }
  end

