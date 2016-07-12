#
# Cookbook Name:: unifi-video
# Recipe:: configure
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

template "#{node['unifi-video']['config-dir']}/#{node['unifi-video']['config-file']}" do
  source 'system.properties.erb'
  owner node['unifi-video']['user']
  group node['unifi-video']['group']
  mode 0644
  notifies :restart, "service[#{node['unifi-video']['service']}]", :delayed
end

service node['unifi-video']['service'] do
  action :nothing
end
