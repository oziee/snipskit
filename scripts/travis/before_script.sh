#!/usr/bin/env bash
set -ev
if [ "$SNIPSKIT_REQUIREMENTS" == "all" ]; then
    curl -L https://codeclimate.com/downloads/test-reporter/test-reporter-latest-linux-amd64 > ./cc-test-reporter
    chmod +x ./cc-test-reporter
    ./cc-test-reporter before-build
fi
