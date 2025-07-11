# Dotfiles

Personal dotfiles configuration for macOS development environment.

## What's Included

- **Zsh Configuration** (`zshrc`) - Oh My Zsh setup with custom aliases and PATH configurations
- **Tmux Configuration** (`tmux.conf`) - Terminal multiplexer with custom keybindings and status bar
- **Neovim Configuration** (`nvim/`) - NvChad-based Neovim setup with LSP, completion, and plugins

## Features

### Zsh Setup
- Oh My Zsh with robbyrussell theme
- Git plugin enabled
- Python3 and pip3 aliases
- Windsurf editor integration
- Conda environment support
- iTerm2 shell integration

### Tmux Setup
- Mouse support enabled
- Custom split panes (| for horizontal, - for vertical)
- Status bar with battery, CPU, and memory information
- 256-color terminal support

### Neovim Setup
- Based on NvChad configuration
- LSP configuration for code intelligence
- Auto-completion with nvim-cmp
- Code formatting with conform.nvim
- Lazy.nvim plugin management

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. Create symbolic links to your home directory:
   ```bash
   ln -sf ~/dotfiles/zshrc ~/.zshrc
   ln -sf ~/dotfiles/tmux.conf ~/.tmux.conf
   ln -sf ~/dotfiles/nvim ~/.config/nvim
   ```

3. Install Oh My Zsh (if not already installed):
   ```bash
   sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

4. Install TPM (Tmux Plugin Manager):
   ```bash
   git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
   ```

5. Reload your shell:
   ```bash
   source ~/.zshrc
   ```

## Usage

### Tmux
- Start tmux: `tmux`
- Split horizontally: `Ctrl+b |`
- Split vertically: `Ctrl+b -`
- Enable mouse mode for easy pane switching

### Neovim
- Launch with `nvim`
- Configuration is based on NvChad
- See `nvim/lua/` for custom configurations

## Customization

- Edit `zshrc` for shell customizations
- Modify `tmux.conf` for terminal multiplexer settings
- Update Neovim configs in `nvim/lua/` directory

## Requirements

- macOS
- Oh My Zsh
- Tmux
- Neovim
- Git