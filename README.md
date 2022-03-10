# MacOS Setup with Ansible

This repository contains an Ansible configuration for setting up a Mac from scratch. It's primary purpose is setting up a new Mac from scratch, but I endeavor to also use it for adding new software as I go so that it remains up to date. At the moment it's being used for setting up M1 based Macs running MacOS Monterey.

## Getting Started

There's a simple shell script in `bin/bootstrap` which will perform the initial steps of:

1. Installing Xcode
2. Installing Ansible
3. Fetching required Ansible roles and collections

And then runs the main playbook `ansible_osx.yml`.

For future updates, `bin/apply` can be used to run just the Ansible playbook without the setup commands.

It's important to note that this isn't designed to be particularly robust, particularly when it comes to required env vars, it may be required to run this. Then close the terminal and open it again and re-run and then repeat this process a few times.

## What's installed

The easiest way to understand what's installed is to read the contents of `ansible_osx.yml`, this configuration is fairly specific to the range of development I do personally, but may serve as a useful starting point for others. The core components are:

- ZSH + Oh My Zsh as the primary shell
- Homebrew for package management
- ASDF for version management (along with plugins and default versions for ruby, python, javascript, elixir and erlang)
- Docker
- VSCode
- A selection of Android SDK's
- Lots of other tools and utilities

## Customizing

Everything can be customized by editing `ansible_osx.yml`.

## Proxmox

```shell
curl -fsSL https://raw.githubusercontent.com/badsaarow/ansible-osx-setup/main/bin/proxmox_1st.sh | bash
curl -fsSL https://raw.githubusercontent.com/badsaarow/ansible-osx-setup/main/bin/proxmox_2nd_user.sh | bash
```

## Ubuntu

```shell
curl -fsSL https://raw.githubusercontent.com/badsaarow/ansible-osx-setup/main/bin/ubuntu_1st.sh | bash
curl -fsSL https://raw.githubusercontent.com/badsaarow/ansible-osx-setup/main/bin/ubuntu_2nd_user.sh | bash
```

## Next

- .ssh clone
- display: scale to many characters
- dock: smaller size
- touche pad: touch to click
- accessiblity: touchpad 3 finger to drag
- reverse-scroller: set oposite to touchpad and mouse wheel
- 스크린샷 -> clipboard: shift + control + cmd + 4
- 크롬 page reload: cmd + R


## Troubleshooting

```shell
WARNING: Running pip as the 'root' user can result in broken permissions and conflicting behaviour with the system package manager. It is recommended to use a virtual environment instead: https://pip.pypa.io/warnings/venv
ERROR! The requirements file '/Users/sungyong/workspace/ansible-osx-setup/bin/requirements.yml' does not exist.
ERROR! the playbook: ansible_osx.yml could not be found

실행은 root에서 실행한다.  bin/bootsrap
.ssh folder 는 사전 복사한다.

```

```
TASK [Get the path to ZSH] *********************************************************************************************************************************************
fatal: [localhost]: FAILED! => {"changed": false, "module_stderr": "objc[21949]: Class AMSupportURLConnectionDelegate is implemented in both /usr/lib/libamsupport.dylib (0x1dfc7b678) and /Library/Apple/System/Library/PrivateFrameworks/MobileDevice.framework/Versions/A/MobileDevice (0x108d802c8). One of the two will be used. Which one is undefined.\nobjc[21949]: Class AMSupportURLSession is implemented in both /usr/lib/libamsupport.dylib (0x1dfc7b6c8) and /Library/Apple/System/Library/PrivateFrameworks/MobileDevice.framework/Versions/A/MobileDevice (0x108d80318). One of the two will be used. Which one is undefined.\n\nYou have not agreed to the Xcode license agreements, please run 'sudo xcodebuild -license' from within a Terminal window to review and agree to the Xcode license agreements.\n", "module_stdout": "", "msg": "MODULE FAILURE\nSee stdout/stderr for the exact error", "rc": 69}

PLAY RECAP *************************************************************************************************************************************************************
localhost                  : ok=17   changed=3    unreachable=0    failed=1    skipped=10   rescued=0    ignored=1  

```

```
$ sudo xcodebuild -license accept
objc[23973]: Class AMSupportURLConnectionDelegate is implemented in both /usr/lib/libamsupport.dylib (0x1dfc7b678) and /Library/Apple/System/Library/PrivateFrameworks/MobileDevice.framework/Versions/A/MobileDevice (0x10a4242c8). One of the two will be used. Which one is undefined.
objc[23973]: Class AMSupportURLSession is implemented in both /usr/lib/libamsupport.dylib (0x1dfc7b6c8) and /Library/Apple/System/Library/PrivateFrameworks/MobileDevice.framework/Versions/A/MobileDevice (0x10a424318). One of the two will be used. Which one is undefined.

```

xcode 한번은 실행해줘야 한다.

tailscale: 1475387142
https://apps.apple.com/kr/app/tailscale/id1475387142?l=en&mt=12