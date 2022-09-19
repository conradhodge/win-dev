# Windows Development Environment

![build](https://github.com/conradhodge/win-dev/workflows/CI/badge.svg)

This describes how to setup a Windows development environment using the [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about) and [Ubuntu](https://ubuntu.com/).

This repo uses the [winget](https://learn.microsoft.com/en-us/windows/package-manager/winget/) CLI to install applications in Windows and [Ansible](https://www.ansible.com/) scripts to provision Ubuntu in the WSL.

## Setup

Clone this repo using the Windows Command Prompt and run the following command.

```shell
./setup.bat
```

This will install the following:

- [Windows Subsystem for Linux](https://learn.microsoft.com/en-us/windows/wsl/install) with the [Ubuntu](https://ubuntu.com/) distribution
- [Git for Windows](https://gitforwindows.org/)
- [Windows Terminal](https://github.com/microsoft/terminal)
- [Visual Studio Code](https://code.visualstudio.com/)

A list of recommended [Visual Studio Code extensions](https://code.visualstudio.com/docs/editor/extension-marketplace) will be offered when this repository is open in Visual Studio Code.

Clone this repo in the WSL and run the following command to install the pre-requisites.

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

## Update

The provision command can also be used to update all the above packages.

```shell
make provision
```
