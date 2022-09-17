# Windows Development Environment

![build](https://github.com/conradhodge/win-dev/workflows/CI/badge.svg)

This describes how to setup a Windows development environment using the [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about) and [Ubuntu](https://ubuntu.com/).

This repo contains [Ansible](https://www.ansible.com/) scripts to provision Ubuntu in the WSL.

## Development tools

Install the following development tools manually.

- [Visual Studio Code](https://code.visualstudio.com/)
- [Windows terminal](https://github.com/microsoft/terminal)
- [WSL](https://learn.microsoft.com/en-us/windows/wsl/install)
- [Git for Windows](https://gitforwindows.org/)

A list of recommended Visual Studio Code extensions will be offered when this repository is open in Visual Studio Code.

## Setup

You will need to install some pre-requisites prior to running the provisioning scripts.

```shell
make setup
```

Then you can run the provision command.

```shell
make provision
```

This will:

- Perform an `apt` update and upgrade
- Install the following `apt` packages:
  - curl
  - zip
  - [jq](https://stedolan.github.io/jq/)
  - [yq](https://mikefarah.gitbook.io/yq/)
  - [Node.js](https://github.com/nodesource/distributions/blob/master/README.md#installation-instructions)
  - [Go](https://golang.org/)
  - [pip and venv](https://docs.microsoft.com/en-us/windows/python/web-frameworks#install-python-pip-and-venv)
  - [ngrok](https://ngrok.com/)
  - [GitHub CLI](https://cli.github.com/)
  - [AWS CDK CLI](https://github.com/aws/aws-cdk)
  - [AWS CLI](https://aws.amazon.com/cli/)
  - [AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/what-is-sam.html)
  - [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/)
  - [cowsay](https://en.wikipedia.org/wiki/Cowsay) (very important)

Follow these tutorials to configure the CLI tools.

- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html)

The provision command can then be used to update all the above tools.
