.PHONY: deps test

deps:
	pip install -r requirements.txt; \
		pip install -r test_requirements.txt
		
lint:
	flake8 hello_world test
	
test:
	PYTHONPATH=. python3 -m pytest
	PYTHONPATH=. python3 -m pytest --verbose -s

run:
	python3 main.py
