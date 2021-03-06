## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

#setup
# Create python virtualenv & source it
	# source ~/.devops/bin/activate
	# python3 -m venv ~/.devops
	# conda activate devops

#install
# This should be run from inside a virtualenv - delete in order to run make install

#lint
# See local hadolint install instructions:   https://github.com/hadolint/hadolint
# This is linter for Dockerfiles
# This is a linter for Python source code linter: https://www.pylint.org/
# This should be run from inside a virtualenv

setup:	
	python3 -m venv ~/.devops

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	hadolint Dockerfile
	pylint --disable=R,C,W1202,W1203 app.py

all: install lint test
