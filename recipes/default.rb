#
# Cookbook Name:: unifi-video
# Recipe:: default
#
# Copyright (C) 2014-2016 SiruS (https://github.com/podwhitehawk)
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

if (platform?('ubuntu') && node['platform_version'] == '12.04') ||
  (platform?('ubuntu') && node['platform_version'] == '14.04') ||
  (platform?('ubuntu') && node['platform_version'] == '16.04') && node['unifi-video']['version'] >= '3.6.0' ||
  (platform?('debian') && node['platform_version'] >= '7.0') ||
  node['unifi-video']['override'] == true

  include_recipe 'apt'
  include_recipe 'unifi-video::package'
  include_recipe 'unifi-video::configure' if node['unifi-video']['configure'] != false
else
  raise "
  > This OS version yet not supported either by Ubiquiti packages or by this cookbook!
  > Please, check README for supported OS list or use override flag at your own risk."
end
