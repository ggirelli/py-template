.PHONY: all clean test

PACKAGE_NAME=$(shell uv version | cut -f 1 -d ' ' | tr '-' '_')

pre-commit:
	uv run pre-commit run --all-files

ruff-check:
	uv run ruff check --fix --preview

ruff-format:
	uv run ruff format --preview

ruff:
	make ruff-check && make ruff-format

unittest:
	uv run -m unittest discover -s src/${PACKAGE_NAME} -p "*_test.py"

pyright:
	uv run pyright -p src/${PACKAGE_NAME}

ci:
	uv sync && \
	make ruff && \
	make unittest && \
	make pyright

build:
	uv build
