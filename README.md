# py-poetry-m1

This repository contains a tutorial for using python poetry and tensorflow on a Apple M1 chip and x64/x86 system.
Additionally when using the M1 chip, the power of its GPU is enabled for tensorflow.

## Usage with the M1 chip

- `make create_env`
- `make activate_env`
- `make install_m1`
- `make patch_mac_m1`
- `make run_main`

It should print `GPU enabled`

## Installation of a new package on Mac

- `poetry add <package_name>`
- `make patch_mac_m1`

## Usage on x64/x86 architecture

- `make create_env`
- `make activate_env`
- `make install_64`
- `make run_main`