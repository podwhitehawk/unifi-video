# This list contains all possible options I could find with their default values.
# Unfortunately, options and values in this configfile is not very well documented.
# I assume changing anything here is a bit risky, if you don't know what you're doing.
default['unifi-video']['conf']['is_default'] = true
default['unifi-video']['conf']['app.http.port'] = 7080
default['unifi-video']['conf']['app.https.port'] = 7443
default['unifi-video']['conf']['ems.liveflv.port'] = 6666
default['unifi-video']['conf']['ems.rtmp.port'] = 1935
default['unifi-video']['conf']['ems.rtsp.port'] = 7447
default['unifi-video']['conf']['db.external'] = 'false'
default['unifi-video']['conf']['app.db.host'] = 'localhost'
default['unifi-video']['conf']['app.db.port'] = 7441
default['unifi-video']['conf']['db.name'] = 'av'
default['unifi-video']['conf']['app.controller.id'] = nil
default['unifi-video']['conf']['app.controller.mode'] = 'master'
default['unifi-video']['conf']['app.systemName'] = 'myNVR'
default['unifi-video']['conf']['timezone'] = 'America/Chicago'
default['unifi-video']['conf']['uuid'] = nil
default['unifi-video']['conf']['app.shutdown.port'] = 7081
default['unifi-video']['conf']['system_ip'] = nil # Replace with public ip
default['unifi-video']['conf']['app.keystorepass'] = nil
default['unifi-video']['conf']['app.session.timeout'] = 1440 # 24h
default['unifi-video']['conf']['recording.stored-snapshot'] = 'false'
default['unifi-video']['conf']['av.tempdir'] = '/tmp/'
