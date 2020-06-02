-include common.mk

compose-setup: compose-build

compose:
	docker-compose up

compose-build:
	docker-compose build

code-lint:
	@(for f in $$(find modules -name '*.rkt'); do raco review $$f || exit 1; done)
