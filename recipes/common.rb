#
# Cookbook Name:: unifi-video
# Recipe:: common
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
