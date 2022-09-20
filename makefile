dive_ubuntu:
	docker run --rm -it -v `pwd`:/home/user linux_env 

build_docker_image:
	docker build -t linux_env .
