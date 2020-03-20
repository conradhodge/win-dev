# Windows

This repo is for provisioning Linux under the Windows Subsystem for Linux (WSL). It assumes you are installing the Ubuntu 18.04 distribution, which as of writing, is the latest [Ubuntu LTS](https://wiki.ubuntu.com/Releases).

First you need to [install the WSL](https://docs.microsoft.com/en-us/windows/wsl/install-win10). Pick the [Ubuntu 18.04](https://www.microsoft.com/store/apps/9N9TNGVNDL3Q) distibution. If you have already setup some of the common tools on your Windows machine you may also need to following this [guide](https://github.com/microsoft/WSL/issues/1640#issuecomment-335034046) to fix your Linux $PATH in WSL.

If you using [Visual Studio Code](https://code.visualstudio.com/) on your host Windows machine I would also recommend following [this guide](https://code.visualstudio.com/docs/remote/wsl) to setup Visual Studio Code to use WSL.

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
  - [AWS CLI](https://aws.amazon.com/cli/) (NOTE: You will need to [configure](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html) the AWS CLI in the WSL console)
