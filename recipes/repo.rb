#
# Cookbook Name:: unifi-video
# Recipe:: repo
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

apt_repository 'unifi-video' do
  uri '[arch=amd64] http://www.ubnt.com/downloads/unifi-video/apt'
  distribution node['lsb']['codename']
  components ['ubiquiti']
  key 'http://www.ubnt.com/downloads/unifi-video/apt/unifi-video.gpg.key'
end

package node['unifi-video']['package'] do
  action :install
end
