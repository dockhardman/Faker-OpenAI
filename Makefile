# Development
format-all:
	isort . --skip setup.py && black --exclude setup.py .

install-all:
	poetry install -E all --with dev

update-all:
	poetry update && \
		poetry export --without-hashes -f requirements.txt --output requirements.txt && \
		poetry export --without-hashes --with dev -f requirements.txt --output requirements-dev.txt

mkdocs:
	mkdocs serve
