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

describe service 'httpd' do
  it { should be_enabled }
  it { should be_running }
end

describe file("/tmp") do
  its('content') { should match /good news/ }
  its('content') { should_not match /shenanigans/ }
end
end
