build:
	poetry build

code_artifact_login:
	./twine_aws_login.sh

publish: build code_artifact_login
	poetry run twine upload --repository codeartifact dist/*

install:
	poetry install --with test

test:
	poetry run pytest -m "not mongo"
