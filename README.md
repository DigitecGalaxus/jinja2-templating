# Jinja2 Templating

This repository provides the Dockerfile to create an image, which can be used for Jinja2 Templating, including the CLI. More info at https://jinja.palletsprojects.com/en/2.11.x/.

[![Build Status](https://digitecgalaxus.visualstudio.com/SystemEngineering/_apis/build/status/DigitecGalaxus.jinja2-templating?branchName=main)](https://digitecgalaxus.visualstudio.com/SystemEngineering/_build/latest?definitionId=1364&branchName=main)

## Prerequisites

- A docker host to build it manually or access to Azure DevOps to build it automatically with the [azure-pipelines.yml](azure-pipelines.yml) file.

## Usage

Build the docker image:

```sh
docker image build -t dgpublicimagesprod.azurecr.io/planetexpress/jinja2-templating:latest .
```

Use the docker image to use the j2 CLI:

```sh
# Mount the j2 template into the container and adjust the command accordingly
docker container run -it dgpublicimagesprod.azurecr.io/planetexpress/jinja2-templating:latest /bin/sh -c 'j2 -f json ...'
```

## Contribute

No matter how small, we value every contribution! If you wish to contribute,

1. Please create an issue first - this way, we can discuss the feature and flesh out the nitty-gritty details
2. Fork the repository, implement the feature and submit a pull request
3. Add yourself to the CONTRIBUTORS.txt file in that pull request
4. Your feature will be added once the pull request is merged
