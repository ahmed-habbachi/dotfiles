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
chezmoi init --apply <your-github-username>
chezmoi init --apply ahmed-habbachi
```

---

Example:

```bash
chezmoi init --apply anything
```

This will:

1. Clone the dotfiles repo from GitHub.
2. Apply all managed files to your `$HOME` directory.

---

## 🔄 Updating Your Dotfiles

When you make changes to config files:

```bash
chezmoi add ~/.bashrc       # Track a new or modified file
chezmoi add ~/.config/nvim/init.vim
chezmoi commit -m "Update bashrc and nvim config"
chezmoi git push            # Push changes to GitHub
```

---

## 📥 Pulling Updates on Another Machine

If you’ve updated dotfiles in the repo:

```bash
chezmoi update
```

This will fetch the latest changes and apply them.

---

## 🛠 Useful Commands

| Command               | Description                                 |
| --------------------- | ------------------------------------------- |
| `chezmoi add <file>`  | Start tracking a file                       |
| `chezmoi edit <file>` | Edit a tracked file in place                |
| `chezmoi apply`       | Apply all changes to your home directory    |
| `chezmoi diff`        | Show changes between source and destination |
| `chezmoi update`      | Pull and apply changes from repo            |
| `chezmoi cd`          | Open the chezmoi source directory           |
| `chezmoi git <args>`  | Run git commands in chezmoi source repo     |

---

## 🔒 Secrets

ChezMoi can store secrets securely with GPG or `age`.
Refer to: [Encrypting secrets](https://www.chezmoi.io/user-guide/encryption/).

---

## 📚 References

* [chezmoi documentation](https://www.chezmoi.io/)
* [chezmoi GitHub repo](https://github.com/twpayne/chezmoi)

```
```

