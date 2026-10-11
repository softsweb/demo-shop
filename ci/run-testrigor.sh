#!/bin/bash
# Paste testRigor's own CI script here: open your test suite in testRigor -> CI/CD Integration -> Bash variation.
# It reads the suite token from the environment variable TESTRIGOR_TOKEN (set as a GitHub secret, never written in this file),
# starts the run and waits until it finishes. This stub fails on purpose until you paste it, so a green pipeline always means a real run.
set -e
if [ -z "$TESTRIGOR_TOKEN" ]; then echo "TESTRIGOR_TOKEN is not set (Settings > Secrets and variables > Actions)"; exit 1; fi
echo "Replace this stub with the Bash script from testRigor's CI/CD Integration page."; exit 1
