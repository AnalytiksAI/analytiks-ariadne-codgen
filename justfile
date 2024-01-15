@_default:
	just --list --unsorted

# Setup local env, run this once and set your token in the .env file
setup:
	python -m venv .local
	.local/bin/pip install ariadne-codegen
	cp .env.example .env

# Generate client code
gen-client:
	.local/bin/python -m ariadne_codegen --config ariadne.toml
