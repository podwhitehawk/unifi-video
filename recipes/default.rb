#
# Cookbook Name:: unifi-video
# Recipe:: default
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

if platform_family?('debian')
  include_recipe 'apt'
end

if platform?('ubuntu') && node['platform_version'] >= '12.04'
  apt_repository 'unifi-video' do
    uri '[arch=amd64] http://www.ubnt.com/downloads/unifi-video/apt'
    distribution node['lsb']['codename']
    components ['ubiquiti']
    key 'http://www.ubnt.com/downloads/unifi-video/apt/unifi-video.gpg.key'
  end
else
  raise "This OS version yet not supported either by Ubiquiti packages or by this cookbook! Check README for supported OS list."
end

package node['unifi-video']['package'] do
  action :upgrade
end

service node['unifi-video']['service'] do
  supports status: true, restart: true, reload: true
  action [:enable, :start]
end
