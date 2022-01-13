# py-poetry-m1
This repository contains a tutorial for using python poetry on a Apple M1 chip in docker containers


## Usage 

- Run `make run_raw_python`
- In the container change to the mounted directory: `cd /opt/project`
- Run `make install`
- Now it's possible to execute different installation commands (e.g. `poetry add `)
- When you are finished DON'T exit the container but open a second terminal
- Run `make tag_raw`

