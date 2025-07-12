# My Personal IDE Setup

<p align="center">
  <a href="https://neovim.io/" target="_blank">
    <img src="https://img.shields.io/badge/Neovim-0.9.0%2B-57AD57?style=for-the-badge&logo=neovim&logoColor=white" alt="Neovim 0.9.0+">
  </a>
  <a href="https://github.com/tmux/tmux" target="_blank">
    <img src="https://img.shields.io/badge/Tmux-Latest-1ABC9C?style=for-the-badge&logo=tmux&logoColor=white" alt="Tmux Latest">
  </a>
  <a href="https://www.zsh.org/" target="_blank">
    <img src="https://img.shields.io/badge/Zsh-Latest-282C34?style=for-the-badge&logo=zsh&logoColor=white" alt="Zsh Latest">
  </a>
  <a href="https://github.com/cjanowski/my-ide/blob/main/LICENSE" target="_blank">
    <img src="https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge" alt="License: MIT">
  </a>
</p>

Welcome to my personal IDE (Integrated Development Environment) setup! This repository contains my highly customized configuration for a powerful and efficient development experience, primarily centered around **Neovim**, **Tmux**, and **Zsh**.

This setup is meticulously crafted for my personal workflow, offering a seamless and productive environment. I'm sharing it here for anyone who might find it useful, wants to adopt a similar environment, or simply wants to explore a robust dotfiles configuration. Feel free to explore, adapt, and use any part of this setup!

## Preview

<img width="1512" height="982" alt="Screenshot 2025-07-12 at 6 48 54 PM" src="https://github.com/user-attachments/assets/0f8976de-3ba5-478e-876d-b6e5bf545720" />
<img width="3024" height="1964" alt="Screenshot 2025-07-12 at 6 50 16 PM" src="https://github.com/user-attachments/assets/155c73c2-15e5-46d4-ba8d-c05e58acc5c4" />
<img width="884" height="194" alt="Screenshot 2025-07-12 at 6 51 49 PM" src="https://github.com/user-attachments/assets/3dfbd852-fa59-439e-87bd-c637722eff36" />

---

## 🚀 Quick Start

If you're eager to get up and running quickly, here's the TL;DR:

1.  **Clone this repository:**
    ```bash
    git clone https://github.com/cjanowski/my-ide.git ~/.dotfiles
    ```
2.  **Symlink configurations:**
    ```bash
    ln -s ~/.dotfiles/nvim ~/.config/nvim
    ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
    ln -s ~/.dotfiles/zshrc ~/.zshrc
    # Add any other symlinks as needed
    ```
3.  **Install Neovim plugins:** Open `nvim` and run `:Lazy sync`.
4.  **Restart your terminal!**


---

## 📖 Table of Contents

*   [✨ Features](#-features)
    *   [Neovim as a Full-fledged IDE](#neovim-as-a-full-fledged-ide)
    *   [Tmux for Terminal Multiplexing](#tmux-for-terminal-multiplexing)
    *   [Zsh for Shell Enhancements](#zsh-for-shell-enhancements)
    *   [Unified Configuration](#unified-configuration)
*   [🛠️ Getting Started](#️-getting-started)
    *   [Prerequisites](#prerequisites)
    *   [Installation](#installation)
*   [⌨️ Keyboard Shortcuts/Commands and Keys](#️-keyboard-shortcutscommands-and-keys)
*   [⚙️ Customization](#️-customization)
*   [🤝 Contributing](#-contributing)
*   [📄 License](#-license)

---

## ✨ Features

This setup is built to maximize productivity and provide a delightful development experience.

### Neovim as a Full-fledged IDE

My Neovim configuration transforms it into a powerful, lightweight IDE with:

*   ⚡ **Blazing Fast Editing:** Enjoy a highly responsive and efficient text editing experience.
*   🧠 **Intelligent Code Completion & Diagnostics:** Powered by Language Server Protocol (LSP) for smart suggestions, error checking, and refactoring (specifically for HTML and CSS).
*   🤖 **AI Autocomplete & Formatting:** Integrated with `augmentcode/augment.vim` for AI-powered code completion, auto-formatting, and auto-saving.
*   🐞 **Integrated Debugging:** Seamlessly debug your code directly within Neovim.
*   🔍 **Fuzzy Finding with Telescope:** Quickly navigate files, buffers, and more with powerful fuzzy search.
*   🌳 **Git Integration with Fugitive:** Effortlessly manage Git operations from within your editor.
*   🔌 **Extensive Plugin Ecosystem:** Support for a wide array of plugins for various programming languages and development tasks, including:
    *   `preservim/nerdtree`: A classic file explorer for easy navigation.
    *   `tpope/vim-obsession`: For robust session management, allowing you to save and restore your work.
    *   `iamcco/markdown-preview.nvim`: Live preview for your Markdown files.
    *   `ashisha/image.vim`: View images directly within Neovim.
    *   `stevearc/conform.nvim`: Automated code formatting to maintain consistent style.
    *   `mhinz/vim-startify`: A customizable start screen for quick access to recent files and sessions.
    *   `hrsh7th/nvim-cmp`: A powerful completion engine for intelligent suggestions.

### Tmux for Terminal Multiplexing

Tmux supercharges your terminal workflow:

*   🔄 **Persistent Sessions:** Detach from your terminal and reattach later, keeping all your work exactly as you left it.
*   ↔️ **Split Panes & Windows:** Efficiently manage multiple tasks side-by-side with flexible pane and window layouts. Custom keybindings (`|` for horizontal, `-` for vertical) make splitting intuitive.
*   🚀 **Seamless Navigation:** Quickly switch between panes and windows with intuitive keybindings (default `Ctrl-b` prefix).
*   📊 **Informative Status Line:** A custom status bar displays essential system information, including hostname, battery status, CPU usage, memory pressure, and current time.
*   🔌 **Plugin Management:** Utilizes `tmux-plugins/tpm` for easy installation and management of Tmux plugins.

### Zsh for Shell Enhancements

My Zsh configuration provides a robust and user-friendly command-line experience:

*   💪 **Powerful Command-Line Features:** Enhanced tab completion, history, and command-line editing, powered by **Oh My Zsh**.
*   ➕ **Extensive Plugin Support:** Boost productivity with plugins like the `git` plugin for enhanced Git command-line integration.
*   ✨ **Customizable Prompts:** A visually informative and aesthetically pleasing command prompt, using the `robbyrussell` theme.
*   🗂️ **Handy Aliases & Functions:** Includes convenient aliases such as `python="python3"` and `pip="pip3"` for streamlined command execution.

### Unified Configuration

*   📦 **Single Repository:** All configurations are managed in one place for easy synchronization, backup, and version control.
*   🔗 **Cohesive Development Flow:** Designed for a consistent and productive experience across all integrated tools.

---

## 🛠️ Getting Started

If you're interested in using this setup, here's a detailed guide. Please note that this is a highly personalized configuration, and you may need to adjust paths and settings to fit your specific system and preferences.

### Prerequisites

Before you begin, ensure you have the following essential tools installed on your system:

*   **Git:** For cloning this repository and managing your dotfiles.
*   **Neovim:** Version `0.9.0` or later is strongly recommended for full compatibility with the Lua-based configuration.
*   **Tmux:** The latest stable version is advised for the best experience.
*   **Zsh:** Set as your default shell.
*   **Oh My Zsh:** The framework for managing your Zsh configuration and plugins.
*   **Node.js and npm:** Required for `markdown-preview.nvim` and potentially other LSP servers.
*   **[Any other critical dependencies, e.g., Python (for `pylsp`, `black`), compilers (GCC, Clang), build tools (Make, CMake), etc. List them clearly here.]**

### Installation

Follow these steps to set up your new IDE environment:

1.  **Clone the repository:**
    Start by cloning this repository to your home directory or a preferred location. I recommend `~/.dotfiles`.

    ```bash
    git clone https://github.com/cjanowski/my-ide.git ~/.dotfiles
    ```
2.  **Backup your existing configurations (Optional but Highly Recommended):**
    Before symlinking, it's a good practice to back up your current configurations. This allows you to easily revert if needed.

    ```bash
    mkdir -p ~/.dotfiles_backup
    mv ~/.config/nvim ~/.dotfiles_backup/nvim_backup_$(date +%Y%m%d%H%M%S) || true
    mv ~/.tmux.conf ~/.dotfiles_backup/tmux.conf_backup_$(date +%Y%m%d%H%M%S) || true
    mv ~/.zshrc ~/.dotfiles_backup/zshrc_backup_$(date +%Y%m%d%H%M%S) || true
    # Add backup commands for any other files you're replacing (e.g., ~/.gitconfig, ~/.config/alacritty)
    ```

3.  **Symlink the configuration files:**
    This setup uses symbolic links to connect the configuration files from this repository to their standard locations in your home directory.

    ```bash
    ln -s ~/.dotfiles/nvim ~/.config/nvim
    ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
    ln -s ~/.dotfiles/zshrc ~/.zshrc
    # Add symlinks for any other configuration files you have in this repo (e.g., ln -s ~/.dotfiles/.gitconfig ~/.gitconfig)
    ```
    *(**Note:** Adjust `~/.dotfiles` if you cloned the repository to a different path.)*

4.  **Install Neovim plugins:**
    Open Neovim for the first time. Your plugin manager (likely Lazy.nvim, as per `lazy.lua` in your `nvim/lua/configs/`) should automatically prompt you to install plugins. If not, run the command `:Lazy sync` inside Neovim.

5.  **Install Zsh plugins/themes:**
    If you're using Oh My Zsh or a similar framework, follow its specific instructions to install themes and plugins. For example, Oh My Zsh typically handles this automatically when you source your `~/.zshrc`.

6.  **Restart your terminal:**
    After symlinking and installing, it's crucial to restart your terminal emulator or source your `~/.zshrc` (`source ~/.zshrc`) to ensure all changes take effect.

---

## ⌨️ Keyboard Shortcuts/Commands and Keys

This section outlines some of the most frequently used keybindings and commands across Neovim, Tmux, and Zsh to help you navigate and utilize this setup efficiently.

### Neovim Keybindings

My Neovim configuration uses `<leader>` (which is usually `Space` by default in NvChad) for many custom mappings.

| Keybinding        | Description                               |
| :---------------- | :---------------------------------------- |
| `;`               | Enter command mode                        |
| `jk`              | Exit insert mode (faster than `Esc`)      |
| `<leader>n`       | Toggle NERDTree file explorer             |
| `<C-p>`           | Select previous item (in completion)      |
| `<C-n>`           | Select next item (in completion)          |
| `<C-d>`           | Scroll documentation down (in completion) |
| `<C-f>`           | Scroll documentation up (in completion)   |
| `<C-Space>`       | Trigger completion                        |
| `<C-e>`           | Close completion window                   |
| `<CR>`            | Confirm selected completion item          |
| `<Tab>`           | Select next completion item or expand snippet |
| `<S-Tab>`         | Select previous completion item or jump back in snippet |
| `:MarkdownPreview`| Start live Markdown preview               |
| `:MarkdownPreviewStop`| Stop live Markdown preview              |
| `:Obsession`      | Save current session                      |
| `:Obsess`         | Save current session (alias)              |
| `:Image`          | View image file                           |
| `:Lazy sync`      | Install/update Neovim plugins             |

### Tmux Keybindings

The default Tmux prefix is `Ctrl-b`. All commands below assume you press `Ctrl-b` first.

| Keybinding        | Description                               |
| :---------------- | :---------------------------------------- |
| `Ctrl-b`          | Send prefix (if pressed twice)            |
| `\|`              | Split window horizontally                 |
| `-`               | Split window vertically                   |
| `h`, `j`, `k`, `l` | Navigate between panes                    |
| `Ctrl-o`          | Toggle between last two panes               |
| `Ctrl-d`          | Detach from session                       |
| `Ctrl-a`          | Send prefix to all panes in the current window |
| `resize-pane`     | Resize pane (use arrow keys after)        |
| `resize-pane -R 15`     | Shiftpane right 15 units        |
| `mouse`           | Enable mouse mode for pane/window selection |

### Zsh Aliases

These are some convenient aliases defined in your `.zshrc`:

| Alias             | Command                                   | Description                               |
| :---------------- | :---------------------------------------- | :---------------------------------------- |
| `python`          | `python3`                                 | Use `python3` as the default Python interpreter |
| `pip`             | `pip3`                                    | Use `pip3` as the default pip command     |

---

## ⚙️ Customization

This setup is a robust starting point, but it's designed to be easily customizable to your personal preferences and workflow. Dive into the configuration files and make it truly your own!

*   **Neovim:**
    *   Explore the `nvim/lua/` directory for the core configuration files.
    *   Add or remove plugins by editing `nvim/lua/plugins/init.lua`.
    *   Adjust keybindings to your liking in `nvim/lua/mappings.lua`.
    *   Modify general editor options in `nvim/lua/options.lua`.
    *   Check `nvim/lua/autocmds.lua` for automated commands and `nvim/lua/configs/` for specific plugin configurations (e.g., `cmp.lua`, `lspconfig.lua`).
*   **Tmux:** Edit `tmux.conf` to change keybindings, customize the status line, or add Tmux plugins.
*   **Zsh:** Modify `zshrc` to add new aliases, functions, or integrate additional Zsh plugins.

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](https://github.com/cjanowski/my-ide/issues).

1.  **Fork** the repository.
2.  **Create** your feature branch (`git checkout -b feature/AmazingFeature`).
3.  **Commit** your changes (`git commit -m 'Add some AmazingFeature'`).
4.  **Push** to the branch (`git push origin feature/AmazingFeature`).
5.  **Open a Pull Request**.

---

## 📄 License

This project is licensed under the [MIT License](LICENSE). See the `LICENSE` file for more details.

---


