# py-poetry-m1
This repository contains a tutorial for using python poetry on a Apple M1 chip in docker containers


## First time usage

- Run `make run_raw_python`
- In the container run `make install`
- __Optional__: Do your own installations (e.g. `poetry add`)
- When you are finished __DON'T__ exit the container but open a second terminal in the same directory
- Run `make tag_raw`
- Now you can exit the container with running `exit`
- An image is now available with the tag: `m1-builded:latest`
- This can be used with [PyCharm](https://www.jetbrains.com/help/pycharm/using-docker-as-a-remote-interpreter.html) or [VsCode](https://code.visualstudio.com/docs/remote/containers)
- Or it can be used interactively: `make run_builded_python`

## Update your environment

- Run `make run_builded_python`
- Change your environment (e.g. `poetry add`)
- __Don't__ exit the container and switch to a second terminal
- Run `make retag_builded` 
- The updated image is now available `m1-builded:latest`


