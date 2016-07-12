#
# Cookbook Name:: unifi-video
# Recipe:: package
#
# Copyright (C) 2014-2015 SiruS (https://github.com/podwhitehawk)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# install mongod. mongo cookbook wasn't used to minimize dependencies
apt_repository 'mongodb' do
  if platform?('debian')
    uri 'http://downloads-distro.mongodb.org/repo/debian-sysvinit'
  elsif platform?('ubuntu')
    uri 'http://downloads-distro.mongodb.org/repo/ubuntu-upstart'
  end
  distribution 'dist'
  components ['10gen']
  keyserver 'keyserver.ubuntu.com'
  key '7F0CEB10'
  only_if { node['unifi-video']['mongo-package'] == 'mongodb-org-server' }
end

package node['unifi-video']['mongo-package'] do
  action :install
end

# getting unifi-video dependencies
node['unifi-video']['packages'].each do |pkgs|
  package pkgs do
  	action :install
  end
end

# installing unifi-video package
remote_file "download_package" do
  source node['unifi-video']['url']
  path "#{Chef::Config[:file_cache_path]}/#{node['unifi-video']['package']}_#{node['unifi-video']['version']}_#{node['platform']}#{node['platform_version']}.deb"
end

package node['unifi-video']['package'] do
  provider Chef::Provider::Package::Dpkg
  source "#{Chef::Config[:file_cache_path]}/#{node['unifi-video']['package']}_#{node['unifi-video']['version']}_#{node['platform']}#{node['platform_version']}.deb"
  action :install
end
