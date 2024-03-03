[![scan-container-for-vulnerabilities](https://github.com/msagi/devsecops-dockerimage/actions/workflows/container-scanning.yml/badge.svg)](https://github.com/msagi/devsecops-dockerimage/actions/workflows/container-scanning.yml)
# Production ready Docker image for DevSecOps pipelines
## Built from up to date Ubuntu packages, up to date DevSecOps tool versions.
## Checked for vulnerabilities every day!

### Base image: 
```
Ubuntu (24.04)
```

### Tools version:
```
[AWS CLI v2]
aws-cli/2.15.25 Python/3.11.8 Linux/6.6.16-linuxkit exe/x86_64.ubuntu.24 prompt/off

[Docker]
Docker version 25.0.3, build 4debf41

[kubectl]
clientVersion:
  buildDate: "2024-02-14T10:40:49Z"
  compiler: gc
  gitCommit: 4b8e819355d791d96b7e9d9efe4cbafae2311c88
  gitTreeState: clean
  gitVersion: v1.29.2
  goVersion: go1.21.7
  major: "1"
  minor: "29"
  platform: linux/amd64
kustomizeVersion: v5.0.4-0.20230601165947-6ce0bf390ce3

[make]
GNU Make 4.3

[Python]
Python 3.12.2
```

### Lincenses for components used in the image:
* Ubuntu 24.04 - Ubuntu is an aggregate work of many works, each covered by their own licence(s) which are available under /usr/share/doc/PACKAGE/copyright.
* AWS CLI - Apache 2.0 - [LICENSE](https://github.com/aws/aws-cli/blob/v2/LICENSE.txt)
* Docker - Apache 2.0 - [LICENSE](https://github.com/docker/docs/blob/main/LICENSE)
* Kubernetes - Apache 2.0 - [LICENSE](https://github.com/kubernetes/k8s.io/blob/main/LICENSE)
* GNU Make - GPL 3 - [LICENSE](https://www.gnu.org/licenses/gpl-3.0.en.html)
* Python3 - PSF - [LICENSE](https://docs.python.org/3/license.html#psf-license)
