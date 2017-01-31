require 'spec_helper'

describe "mongodb" do
  describe service('mongodb') do
    it { should be_enabled }
    it { should be_running }
  end
  describe port(27017) do
    it { should be_listening }
  end
end

describe package('default-jre-headless') do
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
  describe port(6666) do
    it { should be_listening }
  end
end
