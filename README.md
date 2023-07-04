[![scan-container-for-vulnerabilities](https://github.com/msagi/devsecops-dockerimage/actions/workflows/container-scanning.yml/badge.svg)](https://github.com/msagi/devsecops-dockerimage/actions/workflows/container-scanning.yml)
# Production ready Docker image for DevSecOps pipelines
## Built from up to date Ubuntu packages, up to date DevSecOps tool versions.
## Checked for vulnerabilities every day!

### Base image: 
```
Ubuntu (23.10)
```

### Tools version:
```
[AWS CLI v2]
aws-cli/2.12.6 Python/3.11.4 Linux/5.15.49-linuxkit-pr exe/x86_64.ubuntu.23 prompt/off

[Docker]
Docker version 24.0.2, build cb74dfc

[kubectl]
clientVersion:
  buildDate: "2023-06-14T09:53:42Z"
  compiler: gc
  gitCommit: 25b4e43193bcda6c7328a6d147b1fb73a33f1598
  gitTreeState: clean
  gitVersion: v1.27.3
  goVersion: go1.20.5
  major: "1"
  minor: "27"
  platform: linux/amd64
kustomizeVersion: v5.0.1

[make]
GNU Make 4.3

[Python]
Python 3.11.4
```

### Lincenses for components used in the image:
* Ubuntu 23.04 - Ubuntu is an aggregate work of many works, each covered by their own licence(s) which are available under /usr/share/doc/PACKAGE/copyright.
* AWS CLI - Apache 2.0 - [LICENSE](https://github.com/aws/aws-cli/blob/v2/LICENSE.txt)
* Docker - Apache 2.0 - [LICENSE](https://github.com/docker/docs/blob/main/LICENSE)
* Kubernetes - Apache 2.0 - [LICENSE](https://github.com/kubernetes/k8s.io/blob/main/LICENSE)
* GNU Make - GPL 3 - [LICENSE](https://www.gnu.org/licenses/gpl-3.0.en.html)
* Python3 - PSF - [LICENSE](https://docs.python.org/3/license.html#psf-license)
