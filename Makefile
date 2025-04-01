-include /opt/basics/common/common.mk

compose-setup: compose-build

compose:
	docker-compose up

compose-build:
	docker-compose build

code-lint:
	@(for f in $$(find modules -name '*.rkt'); do raco review $$f || exit 1; done)

compose-bash:
	docker-compose run --rm exercises bash

compose-test:
	docker-compose run --rm exercises make test

compose-description-lint:
	docker-compose run --rm exercises make description-lint

compose-schema-validate:
	docker-compose run --rm exercises make schema-validate

ci-check:
	docker-compose --file docker-compose.yml build
	docker-compose --file docker-compose.yml up --abort-on-container-exit
