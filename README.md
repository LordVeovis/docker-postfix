[![CircleCI](https://circleci.com/gh/LordVeovis/docker-postfix/tree/master.svg?style=shield)](https://circleci.com/gh/LordVeovis/docker-postfix/tree/master) [![](https://img.shields.io/docker/pulls/veovis/postfix.svg)](https://hub.docker.com/r/veovis/postfix) ![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/veovis/postfix) [![](https://img.shields.io/github/tag/LordVeovis/docker-postfix.svg)](https://github.com/LordVeovis/docker-postfix/tags) [![](https://img.shields.io/github/license/LordVeovis/docker-postfix.svg)](https://github.com/LordVeovis/docker-postfix/blob/master/LICENSE)

# postfix

An alpine-based docker container providing postfix.

## Details

This container provides postfix.

* Alpine 3.15
* Postfix 3.6.4

## Installing

See [docker-compose.yml](https://github.com/LordVeovis/docker-postfix/blob/master/docker-compose.yml) for an example of how to configure the container.

This container is not configured through environment variables. It require the /etc/postfix to contains all configuration before starting postfix.

Please look at the official [documentation](http://www.postfix.org/documentation.html) for help on the configuration file.

## Environment variables

* TZ: the timezone, like Europe/Paris

## Ports

* 25: default port for receiving mail
* 587: default port for submitting mail (sending mail)
* other ports are configured through the master.cf and main.cf configuration files

## Contributing

Please read [CONTRIBUTING](https://github.com/LordVeovis/docker-postfix/blob/master/CONTRIBUTING) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

As a packager, we use the same versioning system than the upstream and suffixed by a revision number, like the Gentoo versioning.

* the branch master is the latest version and will be tagged latest
* a git branch represent a specific version from the upstream, like 2.10.3
* a git tag is made from a branched commit and represent a released-tag version frozen in time, like 2.10.3-r2

Usually only the lastest version from the upstream is supported.

## Authors

* **Veovis** - *Initial work* - [LordVeovis](https://github.com/LordVeovis)

## License

This project is licensed under the MPL-2.0 License - see the [LICENSE](https://github.com/LordVeovis/docker-postfix/blob/master/LICENSE) file for details
