#!/usr/bin/env bash
set -ev
if [ "$SNIPSKIT_REQUIREMENTS" == "all" ]; then
    ./cc-test-reporter after-build --exit-code "$TRAVIS_TEST_RESULT"
fi
