ifneq (,$(wildcard ./.env))
    include python-envs.env
    export
endif

run_raw:
	docker-compose -f docker-compose.python-envs.yml --env-file ./python-envs.env run --rm raw

commit_raw:
	docker ps -qf "name=${RAW_CONTAINER_PREFIX}" | xargs -I{} docker commit {} ${TAG_NAME}:latest

run_builded:
	docker-compose -f docker-compose.python-envs.yml run --env-file ./python-envs.env --rm builded

recommit_builded:
	docker ps -qf "name=${BUILDED_CONTAINER_PREFIX}" | xargs -I{} docker commit {} ${TAG_NAME}:latest

install:
	bash install.sh

clean_images:
	docker image prune