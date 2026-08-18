# My Dotfiles (Managed with chezmoi)

This repository contains my personal configuration files, managed with [chezmoi](https://www.chezmoi.io/).
It allows me to keep my dotfiles version-controlled, portable, and easy to apply across different machines.

---

## 📦 Requirements

- **chezmoi** installed
- Linux: `sudo apt install chezmoi` (Debian/Ubuntu) or `sudo pacman -S chezmoi`
- macOS: `brew install chezmoi`
- Windows: `scoop install chezmoi` or `winget install twpayne.chezmoi`

---

## 🚀 Setup on a New Machine

Clone and apply your dotfiles directly from GitHub:

```bash
chezmoi init --apply ahmed-habbachi
```

This will:

1. Clone the dotfiles repository.
2. Apply all managed files to your `$HOME` directory.

---

## 🔄 Updating Your Dotfiles

### 1. Edit your local configuration

For example:

```bash
vim ~/.zshrc
```

or

```bash
chezmoi edit ~/.zshrc
```

### 2. Update the chezmoi source

After saving your changes, update the managed copy:

```bash
chezmoi add ~/.zshrc
```

Repeat for any other modified files:

```bash
chezmoi add ~/.config/nvim/init.lua
chezmoi add ~/.config/tmux/tmux.conf
```

### 3. Review the changes

Verify what will be committed:

```bash
chezmoi diff
```

If there is no output, your home directory and chezmoi source are synchronized.

### 4. Commit and push

Open the chezmoi repository:

```bash
chezmoi cd
```

Then commit your changes:

```bash
git status
git add .
git commit -m "Describe your changes"
git push
```

Alternatively, you can run Git directly through chezmoi:

```bash
chezmoi git status
chezmoi git add .
chezmoi git commit -m "Describe your changes"
chezmoi git push
```

---

## 📥 Pulling Updates on Another Machine

To fetch the latest version of your dotfiles and apply them:

```bash
chezmoi update
```

---

## 🛠 Useful Commands

| Command               | Description                                               |
| --------------------- | --------------------------------------------------------- |
| `chezmoi add <file>`  | Update the managed source after editing a file in `$HOME` |
| `chezmoi edit <file>` | Edit the managed version of a file                        |
| `chezmoi apply`       | Apply the managed files to your home directory            |
| `chezmoi diff`        | Compare your home directory with the managed source       |
| `chezmoi update`      | Pull the latest changes and apply them                    |
| `chezmoi cd`          | Open the chezmoi source repository                        |
| `chezmoi git <args>`  | Run Git commands in the chezmoi repository                |

---

## 🔒 Secrets

chezmoi can store secrets securely using GPG or `age`.

See the official documentation:
<https://www.chezmoi.io/user-guide/encryption/>

---

## >\_ Zsh config

to configure zsh head to [https://github.com/radleylewis/zsh](radley lewis zsh config) and follow up the zshenv config:  
Install these packages: zsh neovim eza bat fd fzf zoxide starship ripgrep  
Add the following to `/etc/zsh/zshenv`:

```sh
if [[ -z "$XDG_CONFIG_HOME" ]]
then
    export XDG_CONFIG_HOME="$HOME/.config"
fi

if [[ -d "$XDG_CONFIG_HOME/zsh" ]]
then
    export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
fi
```

Create required directories\*\*

```sh
mkdir -p ~/.local/state/zsh   # history
mkdir -p ~/.cache/zsh         # completion cache

Plugins are installed automatically on first launch via the built-in plugin manager.

## 📚 References

- https://www.chezmoi.io/
- https://github.com/twpayne/chezmoi
- https://github.com/radleylewis/zsh
```
