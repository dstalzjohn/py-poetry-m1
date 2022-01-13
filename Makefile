ifneq (,$(wildcard ./.env))
    include .env
    export
endif

run_raw_python:
	docker-compose run --rm raw

tag_raw:
	docker ps -qf "name=py-poetry-m1-raw" | xargs -I{} docker commit {} m1-builded:latest

run_builded_python:
	docker-compose run --rm builded

install:
	bash install.sh