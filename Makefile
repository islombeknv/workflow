init:
	python -m venv .venv
	.venv/bin/python -m pip install -r requirements.txt
	.venv/bin/python -m pip install -r requirements-dev.txt

format:
	.venv/bin/ruff format .
	.venv/bin/ruff check . --fix

format-check:
	.venv/bin/ruff check .
	.venv/bin/ruff format --check .
	.venv/bin/mypy .

test:
	PYTHONPATH=. .venv/bin/pytest -v