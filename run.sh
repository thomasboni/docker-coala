#!/bin/bash

# This script launch coala-quickstart to build a configuration and
# run coala with it

COALA_CONF_FILE='.coafile'

# We run coala quickstart only if a configuration file doesn't exist
if [ ! -e $COALA_CONF_FILE ]
then
    coala-quickstart --ci
fi

# Run coala
coala --ci --no-autoapply-warn --json --min-severity $QUALITY_SEVERITY_LEVEL \
      --ignore "$QUALITY_IGNORED_FILES" -o $QUALITY_OUTPUT_FILE
