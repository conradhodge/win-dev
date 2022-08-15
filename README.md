# Windows Development Environment

![build](https://github.com/conradhodge/win-dev/workflows/CI/badge.svg)

This describes how to setup a Windows development environment using the [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about) and [Ubuntu](https://ubuntu.com/).

This repo contains [Ansible](https://www.ansible.com/) scripts to provision Ubuntu in the WSL.

## Development tools

Install the following development tools manually.

- [Visual Studio Code](https://code.visualstudio.com/)
- [Windows terminal](https://github.com/microsoft/terminal)
- [WSL](https://docs.microsoft.com/en-us/windows/wsl/)

Follow these tutorials to configure the WSL.

- [Git](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-git)
- [VSCode](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode)

Follow these guides to configure Git.

- [This](https://blog.soltysiak.it/en/2017/01/set-visual-studio-code-as-default-git-editor-and-diff-tool/) to configure `git` with Visual Studio Code
- [This](https://spin.atomicobject.com/2020/05/05/git-configurations-default/) has some useful `git` config options

A list of recommended Visual Studio Code extensions will be offered when this repository is open in Visual Studio Code.

## Setup

You will need to install some pre-requisites prior to running the provisioning scripts.

```shell
./setup.sh
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
  - [GitHub CLI](https://cli.github.com/)
  - [AWS CDK CLI](https://github.com/aws/aws-cdk)
  - [AWS CLI](https://aws.amazon.com/cli/)
  - [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/)
  - [cowsay](https://en.wikipedia.org/wiki/Cowsay) (very important)

Follow these tutorials to configure the CLI tools.

- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html)
