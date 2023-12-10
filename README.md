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

Clone this repo in the WSL.

You will need to install some pre-requisites prior to running the provisioning scripts.

```shell
./setup.sh
```

Then you can run the provision command.

```shell
make provision
```

This will:

- Setup [zsh](https://www.zsh.org/) and [oh-my-zsh](https://ohmyz.sh/) for terminal
- Perform an `apt` update and upgrade
- Install the following:
  - curl
  - zip
  - [jq](https://stedolan.github.io/jq/)
  - [yq](https://mikefarah.gitbook.io/yq/)
  - [Node.js](https://github.com/nodesource/distributions/blob/master/README.md#installation-instructions)
  - [Go](https://golang.org/)
  - [Rush](https://rushjs.io/pages/intro/welcome/)
  - [pip and venv](https://docs.microsoft.com/en-us/windows/python/web-frameworks#install-python-pip-and-venv)
  - [ngrok](https://ngrok.com/)
  - [tmpreaper](https://manpages.ubuntu.com/manpages/focal/man8/tmpreaper.8.html)
  - [Java Runtime Environment from OpenJDK](https://ubuntu.com/tutorials/install-jre#1-overview)
  - [QDirStat](https://github.com/shundhammer/qdirstat)
  - [GitHub CLI](https://cli.github.com/)
  - [AWS CDK CLI](https://github.com/aws/aws-cdk)
  - [AWS CLI](https://aws.amazon.com/cli/)
  - [AWS SAM CLI](https://docs.aws.amazon.com/serverless-application-model/latest/developerguide/what-is-sam.html)
  - [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/)
  - [Liquibase CLI](https://www.liquibase.org/)
  - [cowsay](https://en.wikipedia.org/wiki/Cowsay) (very important)

Follow these tutorials to configure the CLI tools.

- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html)

## Update

The provision command can also be used to update all the above packages.

```shell
make provision
```
