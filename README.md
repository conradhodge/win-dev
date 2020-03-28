# Windows Development Environment

This describes how to setup a Windows machine for development. This repo contains some [Ansible](https://www.ansible.com/) scripts to provision Linux under the [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about).

## Development tools

Install [Visual Studio Code](https://code.visualstudio.com/). Then you need to [install the WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10). The provision scripts have been written for the Ubuntu distribution of Linux. Follow [this guide](https://code.visualstudio.com/docs/remote/wsl) to setup Visual Studio Code to use the WSL.

The [Windows terminal](https://github.com/microsoft/terminal) is a terminal application for users of command-line tools on Windows.

## Setup

You will need to install some pre-requisites prior to running the provisioning scripts. Open the Linux console and type the following command:

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
  - jq
  - cowsay (very important)
  - [Node.js 10.x](https://nodejs.org/)
  - [Go](https://golang.org/)
  - [AWS CLI](https://aws.amazon.com/cli/)

Git configuration:

- Use this [guide](https://blog.soltysiak.it/en/2017/01/set-visual-studio-code-as-default-git-editor-and-diff-tool/) to configure `git` with Visual Studio Code
- This [guide](https://zitseng.com/archives/19588) describes how to install and configure the [Git Credential Manager for Windows](https://github.com/microsoft/Git-Credential-Manager-for-Windows)

AWS configuration

- Configure the [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html) in the WSL console
