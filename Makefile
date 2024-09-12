init: ## Set up the stack (docker-compose or locally if using USE_NATIVE)
	bash tools/install_asdf_plugins.sh
	bash tools/install_git_hooks.sh
	poetry install --sync
