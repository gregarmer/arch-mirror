VERSION ?= 1.1

.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | tr -d '{}' | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-10s\033[0m %s\n", $$1, $$2}'

.PHONY: all
all: build push

.PHONY: build
build:  ## Builds the Docker image
	docker build -t registry.gxa.io/arch-mirror:$(VERSION) .

.PHONY: push
push: build  ## Builds and pushes the Docker image up to the registry
	docker push registry.gxa.io/arch-mirror:$(VERSION)
