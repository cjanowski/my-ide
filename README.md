# Dotfiles

Configuration files for macOS development environment.

## Open Source

I have tried to use as much open source software as possible. I've been a [Dracula](https://draculatheme.com/) supporter forever, but they do also offer non-pro free versions that are excellent. I highly encourage you to check out the many open source packages available in these projects; [NEOVIM](https://neovim.io/), [NVCHAD](https://nvchad.com/)

## What's Included

- **Zsh Configuration** (`zshrc`) - Oh My Zsh setup with custom aliases and PATH configurations
- **Tmux Configuration** (`tmux.conf`) - Terminal multiplexer with custom keybindings and status bar
- **Neovim Configuration** (`nvim/`) - NvChad-based Neovim setup with LSP, completion, and plugins

## AI
I enojy having agentic AI options. Not just for coding work, but to brainstorm, and interact with my work. For me running [claude](https://www.anthropic.com/) in my terminal agentically has been a great option. If needed I'll fire off additional agents in new terminals to allow them to work behind the scene.

## Features

### Terminal
- [Alacritty](https://alacritty.org/)
  
### Zsh Setup
- Oh My Zsh with robbyrussell theme
- Git plugin enabled
- Python3 and pip3 aliases
- Conda environment support

### Tmux Setup
- Mouse support enabled
- Custom split panes (leader = 'ctrl + b' followed by | for horizontal, - for vertical) (resize-pane -R 18)
- Status bar with battery, CPU, and memory information
- 256-color terminal support

### Neovim Setup
- Based on NvChad configuration
- LSP configuration for code intelligence
- Auto-completion with nvim-cmp
- Code formatting with conform.nvim
- Lazy.nvim plugin management
- Mason

### Auto-Complete
- [copilot.lua](https://github.com/zbirenbaum/copilot.lua)
- [augment.vim](https://github.com/augmentcode/augment.vim)

### Themes and Fonts
- I use the [dracula pro](https://draculatheme.com/pro) theme in everything, with [Nerd Fonts](https://www.nerdfonts.com/)

## Images
<img width="1512" height="982" alt="Screenshot 2025-07-11 at 7 56 10 AM" src="https://github.com/user-attachments/assets/f7423296-6ff7-4959-9540-f7aff418c902" />
<img width="1512" height="982" alt="Screenshot 2025-07-11 at 8 00 37 AM" src="https://github.com/user-attachments/assets/dbab8893-4362-419e-874e-cedfd3df9ce6" />
<img width="1512" height="982" alt="Screenshot 2025-07-11 at 7 57 19 AM" src="https://github.com/user-attachments/assets/fda149c9-59a3-4d4d-a1bc-19542a95f833" />


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

- Backup your .zsh first to save anything needed!
- Edit `zshrc` for shell customizations
- Modify `tmux.conf` for terminal multiplexer settings
- Update Neovim configs in `nvim/lua/` directory

## Requirements

- macOS
- Alacritty or similar
- Oh My Zsh
- Tmux
- Neovim
- Git
