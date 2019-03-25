#!/usr/bin/env bash
set -ev
pytest --verbose
if [ "$SNIPSKIT_REQUIREMENTS" == "all" ]
then
  scripts/check_examples.sh
  scripts/generate_docs.sh
  scripts/build_package.sh
fi