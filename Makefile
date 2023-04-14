image_version=2023.04
image_name=devsecops-base
docker_repo=msaginwm

build:
	docker build -t ${docker_repo}/${image_name}:${image_version} .

deploy:
	docker tag ${docker_repo}/${image_name}:${image_version} ${docker_repo}/${image_name}:latest
	docker push ${docker_repo}/${image_name}:latest

run:
	docker run --interactive --tty ${docker_repo}/${image_name}:${image_version} /bin/bash 

packages-info:
	docker run ${docker_repo}/${image_name}:${image_version} /bin/apt list --installed > packages-info.txt

all: dockerbuild