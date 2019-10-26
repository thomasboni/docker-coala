# docker-coala

## Description

A [coala](https://coala.io/) docker image

Python packages installed:

* coala-quickstart `v0.4.0`
* coala-bears `0.12.0.dev20171110210444`
* coala `0.12.0.dev20180101025653`

Entrypoint permit to run coala-quickstart to build a configuration
file and then launch coala

## Environment variables

| Name | Description | Mandatory | Default |
| ---- | ----------- | --------- | ------- |
| QUALITY_SEVERITY_LEVEL | Minimum severity for results (INFO/NORMAL/MAJOR) | True | *n/a* |
| QUALITY_OUTPUT_FILE | Name of output file produced by coala | True | *n/a* |
| QUALITY_IGNORED_FILES | Files to ignore during coala run | False |   |
