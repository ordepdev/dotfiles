# Oh My Dotfiles.

> No extra tooling, no symlinks, files are tracked on a version
control system, you can use different branches for different
computers, you can replicate you configuration easily on new
installation.

## Setting up the config directory

```bash
git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.myconf/ --work-tree=$HOME'
config config status.showUntrackedFiles no
```

> --bare 
> Create a bare repository. If GIT_DIR environment is not set,
it is set to the current working directory.

```bash
config remote add origin git@github.com:ordepdev/dotfiles.git 
config push -u origin master
```

## Setting up the repository on another machine

```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
git clone --bare git@github.com:ordepdev/dotfiles.git $HOME/.cfg
```

## Commiting config changes

```bash
config status
config add .vimrc
config commit -m "Add vimrc"
config push origin master
```

---
