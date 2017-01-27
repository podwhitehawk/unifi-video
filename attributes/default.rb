default['unifi-video']['package'] = 'unifi-video'
default['unifi-video']['service'] = 'unifi-video'
default['unifi-video']['version'] = '3.6.0'
if platform?('debian')
  if node['unifi-video']['version'] <= '3.1.2'
    default['unifi-video']['url'] = "http://dl.ubnt.com/firmwares/unifi-video/#{node['unifi-video']['version']}/unifi-video_#{node['unifi-video']['version']}-Debian7_amd64.deb"
  else
    default['unifi-video']['url'] = "http://dl.ubnt.com/firmwares/unifi-video/#{node['unifi-video']['version']}/unifi-video_#{node['unifi-video']['version']}~Debian7_amd64.deb"
  end
elsif platform?('ubuntu')
  if node['unifi-video']['version'] <= '3.1.2'
    default['unifi-video']['url'] = "http://dl.ubnt.com/firmwares/unifi-video/#{node['unifi-video']['version']}/unifi-video_#{node['unifi-video']['version']}-Ubuntu#{node['platform_version']}_amd64.deb"
  else
    default['unifi-video']['url'] = "http://dl.ubnt.com/firmwares/unifi-video/#{node['unifi-video']['version']}/unifi-video_#{node['unifi-video']['version']}~Ubuntu#{node['platform_version']}_amd64.deb"
  end
end
default['unifi-video']['mongo-package'] = 'mongodb-org-server'
default['unifi-video']['packages'] = ["default-jre-headless", "jsvc"]
default['unifi-video']['config-dir'] = '/var/lib/unifi-video'
default['unifi-video']['config-file'] = 'system.properties'
default['unifi-video']['user'] = 'unifi-video'
default['unifi-video']['group'] = 'unifi-video'
default['unifi-video']['configure'] = false
default['unifi-video']['override'] = false
