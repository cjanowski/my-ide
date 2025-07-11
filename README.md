# My Personal IDE Setup

Welcome to my personal IDE (Integrated Development Environment) setup! This repository contains my highly customized configuration for a powerful and efficient development experience, primarily centered around Neovim, Tmux, and Zsh.

This setup is designed for my personal workflow, but it's also shared here for anyone who might find it useful or wants to adopt a similar environment. Feel free to explore, adapt, and use any part of this configuration.

## Preview
<img width="1512" height="982" alt="Screenshot 2025-07-11 at 7 35 10 PM" src="https://github.com/user-attachments/assets/13c8bc51-f658-4aac-85e8-be75de5ed57f" />

## Features

*   **Neovim as a Full-fledged IDE:**
    *   Fast and responsive text editing.
    *   Language Server Protocol (LSP) integration for intelligent code completion, diagnostics, and refactoring.
    *   Integrated debugging capabilities.
    *   Fuzzy finding with Telescope.
    *   Git integration with Fugitive.
    *   Extensive plugin ecosystem for various programming languages and tasks.
    *   [Add more specific Neovim features you want to highlight, e.g., specific plugins, themes, keybindings]

*   **Tmux for Terminal Multiplexing:**
    *   Persistent sessions: Detach from your terminal and reattach later, keeping your work intact.
    *   Split panes and windows for efficient multitasking.
    *   Seamless navigation between panes and windows.
    *   [Add more specific Tmux features, e.g., custom keybindings, status line configurations]

*   **Alacritty, Zsh with Oh My Zsh (or similar) for Shell Enhancements:**
    *   Powerful command-line features.
    *   Extensive plugin support for productivity (e.g., auto-suggestions, syntax highlighting).
    *   Customizable prompts.
    *   [Add more specific Zsh features, e.g., specific plugins, aliases]

*   **Unified Configuration:**
    *   All configurations are managed in a single repository for easy synchronization and backup.
    *   Designed for a cohesive and productive development flow across different tools.

## Getting Started

If you're interested in using this setup, here's a general guide. Please note that this is a highly personalized configuration, and you may need to adjust paths and settings to fit your system.

### Prerequisites

Before you begin, ensure you have the following installed:

*   **Git:** For cloning this repository.
*   **Neovim:** Version 0.9.0 or later is recommended.
*   **Tmux:** Latest stable version.
*   **Zsh:** Your default shell.
*   **[Any other dependencies, e.g., Node.js for LSP servers, Python for certain tools, compilers, etc.]**

### Installation

1.  **Clone the repository:**
    ```bash
    git clone https://github.com/YOUR_USERNAME/my-ide.git ~/.dotfiles # Or wherever you prefer
    ```
    *(Replace `YOUR_USERNAME` with your actual GitHub details)*

2.  **Backup your existing configurations (optional but recommended):**
    ```bash
    mv ~/.config/nvim ~/.config/nvim_backup
    mv ~/.tmux.conf ~/.tmux.conf_backup
    mv ~/.zshrc ~/.zshrc_backup
    # Add any other files you're replacing
    ```

3.  **Symlink the configuration files:**
    This setup uses symlinks to link the files from this repository to their respective locations.

    ```bash
    ln -s ~/.dotfiles/nvim ~/.config/nvim
    ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
    ln -s ~/.dotfiles/zshrc ~/.zshrc
    # Add symlinks for any other configuration files
    ```
    *(Adjust `~/.dotfiles` if you cloned the repository elsewhere)*

4.  **Install Neovim plugins:**
    Open Neovim and run `:Lazy sync` (or your preferred plugin manager's command) to install all configured plugins.

5.  **Install Zsh plugins/themes:**
    If you're using Oh My Zsh, follow its instructions to install themes and plugins.

6.  **Restart your terminal:**
    After symlinking and installing, restart your terminal or source your `~/.zshrc` (`source ~/.zshrc`) to apply the changes.

## Customization

This setup is a starting point. You're encouraged to customize it to your liking:

*   **Neovim:**
    *   Explore `nvim/lua/` for core configurations.
    *   Add or remove plugins in `nvim/lua/plugins/init.lua`.
    *   Adjust keybindings in `nvim/lua/mappings.lua`.
    *   Modify options in `nvim/lua/options.lua`.
*   **Tmux:** Edit `tmux.conf` to change keybindings, status line, or add plugins.
*   **Zsh:** Modify `zshrc` for aliases, functions, or additional plugins.

## Contributing

If you have suggestions or improvements, feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
