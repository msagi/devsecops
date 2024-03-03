image_version := $(shell date "+%Y.%m.%d")
image_name = devsecops-base
docker_repo = msaginwm
docker_options = --progress=plain

prune:
	docker image prune
	$(eval docker_options += --no-cache)
	
build:
	docker build ${docker_options} -t ${docker_repo}/${image_name}:${image_version} .
	docker run ${docker_repo}/${image_name}:${image_version} cat /install/version.txt > version-info.txt
	docker run ${docker_repo}/${image_name}:${image_version} cat /install/packages.txt > packages-info.txt

rebuild: prune build

deploy:
	docker tag ${docker_repo}/${image_name}:${image_version} ${docker_repo}/${image_name}:latest
	docker push ${docker_repo}/${image_name} --all-tags

run:
	docker run --interactive --tty ${docker_repo}/${image_name}:${image_version} /bin/bash 

all: build