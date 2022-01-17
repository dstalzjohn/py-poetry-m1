
TAG_NAME=m1-builded

# include this optional file to apply local changes
-include Makefile.in

run_raw:
	docker-compose run --rm raw

commit_raw:
	docker ps -qf "name=$(shell basename `pwd`)_raw" | xargs -I{} docker commit {} $(TAG_NAME):latest

run_builded:
	docker-compose run --rm builded

recommit_builded:
	docker ps -qf "name=$(shell basename `pwd`)_builded" | xargs -I{} docker commit {} $(TAG_NAME):latest

install:
	bash install.sh

clean_images:
	docker image prune