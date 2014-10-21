# unifi-video cookbook
[![Build Status](https://secure.travis-ci.org/podwhitehawk/unifi-video.png?branch=master)](http://travis-ci.org/podwhitehawk/unifi-video)

This cookbook is used to install [UniFi Video](http://www.ubnt.com/unifi-video/unifi-nvr/) - software to manage the [Ubiquiti](http://www.ubnt.com) UniFi Video Cameras.

## Requirements
Depends on cookbooks:

- apt

## Supported Platforms
Tested and runs on:

- Ubuntu 12.04
- Ubuntu 14.04
- Debian 7

Should also run on Ubuntu 13.04 and 13.10 but not tested yet.

## Attributes
| Key | Description | Values |
|-----|------|-------------|-------|
| node['unifi-video']['package'] | Name of UniFi Video package to install | `unifi-video` |
| node['unifi-video']['install_method'] | Method to install UniFi Video | `repo` or `package` |
| node['unifi-video']['version'] | In case of `package` installation this defines version | `3.0.8` |
| node['unifi-video']['url'] | URL where to get package if install method is `package` |  |
| node['unifi-video']['mongo-package'] | Name of mongodb package to install | `mongodb-org-server` |
| node['unifi-video']['packages'] | Dependencies for `package` installation | `["openjdk-7-jre-headless", "jsvc"]` |
| node['unifi-video']['service'] | Name of unifi-video service | `unifi-video` |
| node['unifi-video']['config-dir'] | Path to configfile | `/var/lib/unifi-video` |
| node['unifi-video']['config-file'] | Name of configfile | `system.properties` |
| node['unifi-video']['user'] | unifi-video system user | `unifi-video` |
| node['unifi-video']['group'] | unifi-video system group | `unifi-video` |
| node['unifi-video']['conf']['is_default'] | Use default settings for unifi-video | `true` |

If `node['unifi-video']['conf']['is_default']` is not equal to `true`, then `configure` recipe will run and customize unifi-video.

## Usage
Adjust attributes to suit your needs and include recipe `[unifi-video::default]` to deploy UniFi Video software.

## Contributing
Your contributions is highly appreciated.
Here is standart instruction how to do so:

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-recipe`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## License and Authors
- Author:: SiruS (https://github.com/podwhitehawk)
```text
Copyright (C) 2014 SiruS (https://github.com/podwhitehawk)

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
