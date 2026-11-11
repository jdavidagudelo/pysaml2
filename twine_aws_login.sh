#!/usr/bin/env bash
# Configure twine (~/.pypirc "codeartifact" entry) with a fresh CodeArtifact token.
set -euo pipefail

aws codeartifact login --tool twine \
  --domain "${CODEARTIFACT_DOMAIN:-ubidots}" \
  --domain-owner "${CODEARTIFACT_DOMAIN_OWNER:-367316522684}" \
  --repository "${CODEARTIFACT_REPOSITORY:-ubidots}" \
  --region "${AWS_REGION:-us-east-2}"
