# Dotfiles

Managed with [chezmoi](https://www.chezmoi.io/).

## What's included

| Target path                      | Description                       |
|----------------------------------|-----------------------------------|
| `~/.bashrc`                      | Bash configuration                |
| `~/.bash_aliases`                | Shell aliases                     |
| `~/.bash_scripts`                | Custom shell functions            |
| `~/.vimrc`                       | Vim configuration (for VMs)       |
| `~/.tmux.conf`                   | Tmux configuration                |
| `~/.config/starship.toml`        | Starship prompt                   |
| `~/.config/alacritty/`           | Alacritty terminal                |
| `~/.config/nvim/`                | Neovim (LazyVim)                  |
| `~/.config/rofi/`                | Rofi launcher                     |
| `~/.config/gtk-3.0/`             | GTK3 tweaks (GNOME Terminal)      |
| `~/.config/hypr/monitors.conf`   | Hyprland monitor layout           |

## Install chezmoi

```bash
# Arch Linux
sudo pacman -S chezmoi

# Or with curl (any distro)
sh -c "$(curl -fsLS get.chezmoi.io)"
```

## First-time setup

Initialize chezmoi from this repo:

```bash
chezmoi init https://github.com/<tu-usuario>/dotfiles.git
```

Preview what would change:

```bash
chezmoi diff
```

Apply the dotfiles:

```bash
chezmoi apply
```

Or do both at once:

```bash
chezmoi init --apply https://github.com/<tu-usuario>/dotfiles.git
```

## Daily usage

### Edit a dotfile

```bash
# Edit the source and apply in one step
chezmoi edit ~/.bashrc --apply

# Or edit the source, review, then apply
chezmoi edit ~/.bashrc
chezmoi diff
chezmoi apply
```

### Add a new dotfile

```bash
chezmoi add ~/.config/some/config.toml
```

This copies the file into the chezmoi source directory with the correct naming.

### See what would change

```bash
chezmoi diff
```

### Pull latest changes from remote

```bash
chezmoi update
```

### Go to the source directory

```bash
chezmoi cd
```

This opens a subshell in `~/.local/share/chezmoi` (the source directory).

## Chezmoi naming conventions

Chezmoi uses special prefixes in the source directory to control how files are deployed:

| Source name          | Target name    |
|----------------------|----------------|
| `dot_bashrc`         | `.bashrc`      |
| `dot_config/`        | `.config/`     |
| `private_dot_file`   | `.file` (0600) |
| `exact_dir/`         | `dir/` (removes extra files) |

## Notes

- **`starship-root.toml`**: Starship config for the root user. Not managed by chezmoi (since chezmoi manages a single user's home). Copy it manually if needed:
  ```bash
  sudo cp starship-root.toml /root/.config/starship.toml
  ```
- **`output-no-watermark.jpeg`**: Wallpaper image, excluded from chezmoi via `.chezmoiignore`.
