#
# Cookbook Name:: unifi-video
# Recipe:: package
#
# Copyright (C) 2014 SiruS (https://github.com/podwhitehawk)
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

# getting unifi-video dependencies
node['unifi-video']['packages'].each do |pkgs|
  package pkgs do
  	action :install
  end
end

remote_file "download_package" do
  source node['unifi-video']['url']
  path "#{Chef::Config[:file_cache_path]}/#{node['unifi-video']['package']}_#{node['platform']}#{node['platform_version']}.deb"
end
