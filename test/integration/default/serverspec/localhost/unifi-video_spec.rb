require 'spec_helper'

describe "mongodb" do
  describe file('/etc/apt/sources.list.d/mongodb.list') do
    it { should be_file }
    if os[:family] == 'debian'
      it { should contain 'http://downloads-distro.mongodb.org/repo/debian-sysvinit' }
    elsif os[:family] == 'ubuntu'
      it { should contain 'http://downloads-distro.mongodb.org/repo/ubuntu-upstart' }
    end
  end
  describe package('mongodb-org-server') do
    it { should be_installed }
  end
  describe service('mongod') do
    it { should be_enabled }
    it { should be_running }
  end
  describe port(27017) do
    it { should be_listening }
  end
end

describe package('openjdk-7-jre-headless') do
  it { should be_installed }
end

describe package('jsvc') do
  it { should be_installed }
end

describe "unifi-video" do
  describe package('unifi-video') do
    it { should be_installed }
  end
  describe service('unifi-video') do
    it { should be_enabled }
    it { should be_running }
  end
  describe port(7080) do
    it { should be_listening }
  end
  describe port(7443) do
    it { should be_listening }
  end
  describe port(1935) do
    it { should be_listening }
  end
  describe port(6666) do
    it { should be_listening }
  end
end
