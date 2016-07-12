# 1.2.0
* get rid of repo install method, as it's not supported by UBNT anymore
* update to use 3.3.0

# 1.1.3
* updating to support unifi-video 3.1.1
* added debian 7.8 and 8.1 support
* fixed settings customization
* added system_ip, app.keystorepass, app.session.timeout options to system.properties
* code cleanup and small improvements

# 1.1.2
* fixed stove version constraint
* fixed travis build errors
* fixed metadata.rb absence

# 1.1.1
* added 1 new config variable and fixed db port value
* dropped support for ubuntu 13.10, added override switch to use on non supported OS

# 1.1.0
* made changes to be able to configure unifi-video

# 1.0.3
* added travis-ci integration
* added serverspec tests
* fixed foodcritic dependency for travis

# 1.0.2
* switched to mongodb 2.6, thus fixed ubuntu installation

# 1.0.1
* added digitalocean support

# 1.0.0
* added package install method

# 0.1.2
* added debian7 support

# 0.1.1
* updated readme
* added proper ubuntu12+ detection

# 0.1.0
Initial release of unifi-video
