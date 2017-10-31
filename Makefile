SHELL := /bin/bash
.PHONY: help
help:
	@echo -e "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' | column -c2 -t -s :)"

install: ## install yarn dependencies
	@yarn install

build: ## build the javascript
	@NODE_ENV=production ./node_modules/.bin/gulp

docker-start: ## start containers
	@docker-compose up -d
