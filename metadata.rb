name             'unifi-video'
maintainer       'SiruS'
maintainer_email 'https://github.com/podwhitehawk'
license          'Apache 2.0'
description      'Installs/Configures Ubiquiti UniFi Video'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.1.1'

depends 'apt'

supports 'ubuntu', '== 12.04'
supports 'ubuntu', '== 14.04'
supports 'debian', '>= 7.0'
