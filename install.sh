#!/bin/bash

curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
export PATH="/root/.poetry/bin:${PATH}"
poetry config virtualenvs.create false
poetry install
