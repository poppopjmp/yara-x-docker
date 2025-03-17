# yara-x-docker
[![Docker Image CI](https://github.com/poppopjmp/yara-x-docker/actions/workflows/docker-image.yml/badge.svg)](https://github.com/poppopjmp/yara-x-docker/actions/workflows/docker-image.yml)
[![Codacy Security Scan](https://github.com/poppopjmp/yara-x-docker/actions/workflows/codacy.yml/badge.svg)](https://github.com/poppopjmp/yara-x-docker/actions/workflows/codacy.yml)

The usage of this container has been designed for CI/CD

```
Docker usage

git clone https://github.com/poppopjmp/yara-x-docker 

cd yara-x-docker

docker build -t docker-yara . 

docker run -it -v /home/kali/artifact:/malware docker-yara

```
