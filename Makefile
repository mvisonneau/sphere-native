NAME          := Sphere
ARCH          := x64
OS            := linux 
.DEFAULT_GOAL := help

.PHONY: build
build: ## Build the app
	nativefier \
		-a $(ARCH) \
		-p $(OS) \
		-n $(NAME) \
		https://beta.sphere.me

.PHONY: help
help: ## Displays this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
