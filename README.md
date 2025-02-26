# STOW

GNU Stow is a symlink farm manager which takes distinct packages of software and/or data located in separate directories on the filesystem, and makes them appear to be installed in the same place.

```shell
$ tree -a ~/.dotfiles
.
├── bash
│   ├── .bashrc
│   └── .profile
└── vim
    └── .vimrc
```

To symlink vim for example:

```shell
stow vim
```

Refer to this link to know more about the init and setup process:
https://dev.to/spacerockmedia/how-i-manage-my-dotfiles-using-gnu-stow-4l59

or just:

```shell
sudo ./setup.sh
```
