run_raw_python:
	docker-compose run --rm raw

tag_raw:
	docker ps -qf "name=py-poetry-m1_raw" | xargs -I{} docker commit {} m1-builded:latest

run_builded_python:
	docker-compose run --rm builded

retag_builded:
	docker ps -qf "name=py-poetry-m1_builded" | xargs -I{} docker commit {} m1-builded:latest

install:
	bash install.sh