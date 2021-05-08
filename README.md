# Windows Development Environment

![build](https://github.com/conradhodge/win-dev/workflows/CI/badge.svg)

This describes how to setup a Windows development environment using the [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about) and [Ubuntu](https://ubuntu.com/). This repo contains [Ansible](https://www.ansible.com/) scripts to provision Ubuntu in the WSL.

## Development tools

Install the following development tools manually.

- [Visual Studio Code](https://code.visualstudio.com/)
- [Windows terminal](https://github.com/microsoft/terminal)
- [WSL](https://docs.microsoft.com/en-us/windows/wsl/)

Follow these tutorials to configure the WSL.

- [Git](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-git)
- [VSCode](https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-vscode)
- [This guide](https://blog.soltysiak.it/en/2017/01/set-visual-studio-code-as-default-git-editor-and-diff-tool/) to configure `git` with Visual Studio Code

## Setup

You will need to install some pre-requisites prior to running the provisioning scripts. Open the Ubuntu console and type the following command:

```shell
./setup.sh
```

Then you can run the provision command:

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
  - [GitHub CLI](https://cli.github.com/)
  - [AWS CLI](https://aws.amazon.com/cli/)
  - [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/)
  - [cowsay](https://en.wikipedia.org/wiki/Cowsay) (very important)

Follow these tutorials to configure the CLI tools.

- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html)
