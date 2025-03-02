# yara-x-docker

The usage of this container is been designed for CI/CD


Docker usage

git clone https://github.com/poppopjmp/yara-x-docker 

cd yara-x-docker

docker build -t docker-yara . 

docker run -it -v /home/kali/artifact:/malware docker-yara
