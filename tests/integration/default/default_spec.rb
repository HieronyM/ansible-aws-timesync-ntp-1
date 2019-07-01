# encoding: utf-8

# chrony
describe package('chrony') do
    it { should be_installed }
  end
  
  describe service('chrony') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
  
  describe chrony_conf do
    its('server') { should eq "169.254.169.123" }
  end
