# Docker lab environment provisioning


## Prerequisites

Install:

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](https://www.vagrantup.com/downloads.html)
- [Git](https://git-scm.com/downloads) 

## Provision

Then execute in Git Bash

```
$ git config --global http.proxy http://proxy1.altranit.corp.altran.com:8080
$ git config --global https.proxy http://proxy1.altranit.corp.altran.com:8080
$ git clone https://github.com/denismaggior8/docker-altran.git
$ cd docker-altran
$ ./start.sh
```
