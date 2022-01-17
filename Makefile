
TAG_NAME=m1-built

# include this optional file to apply local changes
-include Makefile.in

run_raw:
	docker-compose run --rm raw

commit_raw:
	docker ps -qf "name=$(shell basename `pwd`)_raw" | xargs -I{} docker commit {} $(TAG_NAME):latest

run_built:
	docker-compose run --rm built

recommit_built:
	docker ps -qf "name=$(shell basename `pwd`)_built" | xargs -I{} docker commit {} $(TAG_NAME):latest

install:
	bash install.sh

clean_images:
	docker image prune