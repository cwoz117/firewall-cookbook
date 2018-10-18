describe port(22) do
  it { is_expected.to be_listening }
end

describe package('firewalld') do
  it { is_expected.to be_installed }
end

describe service('firewalld') do
  it { is_expected.to be_enabled }
  it { is_expected.to be_running }
end

describe command('firewall-cmd --get-active-zones | grep work') do
  its('stdout') { should eq "work\n" }
end
