.PHONY: requirements

PROJECT_NAME=mel
PYTHONVERSION=3.7

create_environment:
	conda create --yes --name $(PROJECT_NAME) python=$(PYTHONVERSION) anaconda

requirements:
	pip install -r requirements.txt
	conda install --yes ipykernel
	python -m ipykernel install --user --name $(PROJECT_NAME) --display-name "$(PROJECT_NAME)"