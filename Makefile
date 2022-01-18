
# tag name which is used to commit the file
TAG_NAME=m1-built

# include this optional file to apply local changes
-include Makefile.in

# Creates a new container and runs it
# target attributes of `raw` is specified in docker-compose.yml
# --rm removes the container when it's stopped
run_raw:
	docker-compose run --rm raw

# This command persists a docker container to an image
# The first part finds the id of the running `raw` container
# The part after the pipe commits it to the image with the specified tag
commit_raw:
	docker ps -qf "name=$(shell basename `pwd`)_raw" | xargs -I{} docker commit {} $(TAG_NAME):latest

# Creates a new container and runs it
# target attributes of `built` is specified in docker-compose.yml
# --rm removes the container when it's stopped
run_built:
	docker-compose run --rm built

# This command persists a docker container to an image
# The first part finds the id of the running `built` container
# The part after the pipe commits it to the image with the specified tag
recommit_built:
	docker ps -qf "name=$(shell basename `pwd`)_built" | xargs -I{} docker commit {} $(TAG_NAME):latest

# triggers the install script
# used inside of the docker container `raw`
install:
	bash install.sh

# cleans all unused images
clean_images:
	docker image prune