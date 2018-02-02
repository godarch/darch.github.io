GIT_COMMIT=$(shell git rev-parse HEAD)
# v1.0.1
TAG=$(TRAVIS_TAG)

.PHONY: clean_build build ci_deps ci

default: build

clean_build:
	@echo "cleaning web/public/"
	@rm -rf web/public/
build: clean_build
	@echo "building web"
	@cd web && ../binaries/hugo
clean_release:
	@echo "cleaning tmp/"
	@rm -rf tmp/
release: clean_release
	scripts/release web/public tmp deploy_key
	
ci: build release
