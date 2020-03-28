# Windows Subsystem for Linux

This repo is for provisioning Linux under the [Windows Subsystem for Linux (WSL)](https://docs.microsoft.com/en-us/windows/wsl/about). It assumes you are installing the Ubuntu 18.04 distribution, which as of writing, is the latest [Ubuntu LTS](https://wiki.ubuntu.com/Releases).

## Setup

First you need to [install the WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10). Pick the [Ubuntu 18.04](https://www.microsoft.com/store/apps/9N9TNGVNDL3Q) distibution.

Follow [this guide](https://code.visualstudio.com/docs/remote/wsl) to setup [Visual Studio Code](https://code.visualstudio.com/) to use the WSL.

You will need to install some pre-requisites prior to running the provisioning scripts. Open the Ubuntu 18.04 WSL console and type the following command:

```shell
./setup.sh
```

Then you can run the provision command in the WSL console:

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

## Manual steps

Git

- Use this [guide](https://blog.soltysiak.it/en/2017/01/set-visual-studio-code-as-default-git-editor-and-diff-tool/) to configure `git` with Visual Studio Code
- This [guide](https://zitseng.com/archives/19588) describes how to install and configure the Git Credential Manager for Windows

AWS

- Configure the [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html) in the WSL console
