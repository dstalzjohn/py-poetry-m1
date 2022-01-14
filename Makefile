run_raw:
	docker-compose -f docker-compose.python-envs.yml run --rm raw

commit_raw:
	docker ps -qf "name=m1_raw" | xargs -I{} docker commit {} m1-builded:latest

run_builded:
	docker-compose -f docker-compose.python-envs.yml run --rm builded

recommit_builded:
	docker ps -qf "name=m1_builded" | xargs -I{} docker commit {} m1-builded:latest

install:
	bash install.sh

clean_images:
	docker image prune