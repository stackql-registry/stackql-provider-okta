#!/bin/bash
# Post-processing for the generated okta provider.
# Delegates to the idempotent node implementation (fast on all platforms).
set -e
node provider-dev/scripts/post_processing.mjs
