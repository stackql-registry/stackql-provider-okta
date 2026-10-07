# stackql okta provider - build pipeline
#
# Typical flows:
#   make refresh    # pull the latest Okta OpenAPI spec and regenerate mappings
#                   # (curate any new unmapped rows in provider-dev/config/all_services.csv,
#                   #  new rows have an empty stackql_resource_name)
#   make all        # install deps, generate the provider, generate docs, build the site
#   make smoke-test # live smoke test with the locally generated provider
#                   # (requires OKTA_API_TOKEN and OKTA_SUBDOMAIN)

SHELL := /bin/bash

SPEC_URL     := https://raw.githubusercontent.com/okta/okta-management-openapi-spec/master/dist/current/management-minimal.yaml
SPEC         := provider-dev/downloaded/management-minimal.yaml
SOURCE_DIR   := provider-dev/source
CONFIG_DIR   := provider-dev/config
PROVIDER_OUT := provider-dev/openapi/src/okta
PROVIDER_DIR := $(PROVIDER_OUT)/v00.00.00000

.PHONY: all refresh deps download-spec split normalize mappings provider docs site serve smoke-test smoke-test-live crud-test clean

all: deps provider docs site

refresh: download-spec split normalize mappings

deps:
	npm install
	cd website && yarn install

download-spec:
	curl -L $(SPEC_URL) -o $(SPEC)

split:
	npm run split -- \
	  --provider-name okta \
	  --api-doc $(SPEC) \
	  --svc-discriminator path \
	  --output-dir $(SOURCE_DIR) \
	  --overwrite

normalize:
	npm run normalize -- --api-dir $(SOURCE_DIR)

mappings:
	npm run generate-mappings -- \
	  --input-dir $(SOURCE_DIR) \
	  --output-dir $(CONFIG_DIR)

provider:
	npm run generate-provider -- \
	  --provider-name okta \
	  --input-dir $(SOURCE_DIR) \
	  --output-dir $(PROVIDER_OUT) \
	  --config-path $(CONFIG_DIR)/all_services.csv \
	  --servers $(CONFIG_DIR)/servers.json \
	  --provider-config $(CONFIG_DIR)/provider_config.json \
	  --service-config $(CONFIG_DIR)/service_config.json \
	  --naive-req-body-translate \
	  --overwrite
	node provider-dev/scripts/post_processing.mjs

docs:
	npm run generate-docs -- \
	  --provider-name okta \
	  --provider-dir ./$(PROVIDER_DIR) \
	  --output-dir ./website \
	  --provider-data-dir ./provider-dev/docgen/provider-data

site:
	cd website && yarn build

serve:
	cd website && yarn serve

smoke-test:
	bash test/smoke-test.sh

smoke-test-live:
	bash test/smoke-test.sh --live

crud-test:
	bash test/crud-lifecycle-test.sh

clean:
	rm -rf website/build website/.docusaurus
