HOME ?= `$HOME`

explain:
	### Welcome
	#
	# Makefile for a development machine
	#
	### Targets
	@cat Makefile* | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: setup
setup: ## Install the pre-requisite
	./setup.sh

.PHONY: provision
provision: ## Provision your Linux machine via the Windows Subsystem for Linux
	ansible-playbook -i ansible/hosts ansible/wsl.yml --verbose --ask-become-pass
