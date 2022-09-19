HOME ?= `$HOME`

explain:
	### Welcome
	#
	# Makefile for a Windows development machine using Ubuntu via the Windows Subsystem for Linux
	#
	### Targets
	@cat Makefile* | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: setup
setup: ## Setup git hooks
	cp scripts/githooks/* .git/hooks/

.PHONY: vet
vet: ## Vet the Windows Subsystem for Linux Anisible playbook
	ansible-playbook ansible/wsl.yml --syntax-check

.PHONY: provision
provision: setup-git-config ## Provision/update Ubuntu via the Windows Subsystem for Linux
	ansible-playbook -i ansible/hosts ansible/wsl.yml --verbose --ask-become-pass

.PHONY: setup-git-config
setup-git-config: ## Setup the gitconfig in your home directory if not already configured
ifeq ("$(wildcard $(HOME)/.gitconfig)","")
	@echo "Enter your full name - This is how git will report your work";
	@read name; \
	git config --global user.name "$$name"

	@echo "Enter your email address";
	@read email; \
	git config --global user.email $$email
endif
