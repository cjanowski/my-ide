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
  <a href="https://github.com/coryjanowski/my-ide/blob/main/LICENSE" target="_blank">
    <img src="https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge" alt="License: MIT">
  </a>
</p>

Welcome to my personal IDE setup! This repository contains my highly customized configuration for a powerful development experience, centered around **Neovim**, **Tmux**, and **Zsh**.

<img width="1512" height="982" alt="Screenshot 2025-07-12 at 6 48 54 PM" src="https://github.com/user-attachments/assets/0f8976de-3ba5-478e-876d-b6e5bf545720" />
<img width="3024" height="1964" alt="Screenshot 2025-07-12 at 6 50 16 PM" src="https://github.com/user-attachments/assets/155c73c2-15e5-46d4-ba8d-c05e58acc5c4" />
<img width="884" height="194" alt="Screenshot 2025-07-12 at 6 51 49 PM" src="https://github.com/user-attachments/assets/3dfbd852-fa59-439e-87bd-c637722eff36" />

## 🚀 Quick Start

1. **Clone this repository:**
   ```bash
   git clone https://github.com/coryjanowski/my-ide.git ~/my-ide
   ```

2. **Symlink configurations or skip and copy over nvim folder in your `config/nvim/`:**
   ```bash
   ln -s ~/my-ide/config/nvim ~/.config/nvim
   ln -s ~/my-ide/config/tmux.conf ~/.tmux.conf
   ln -s ~/my-ide/config/zshrc ~/.zshrc
   ```

3. **Install Neovim plugins:** Open `nvim` and run `:Lazy sync`

4. **Restart your terminal!**

## 📁 Repository Structure

```
my-ide/
├── config/
│   ├── nvim/          # Neovim configuration
│   ├── tmux.conf      # Tmux configuration  
│   └── zshrc          # Zsh configuration
└── README.md          # This file
```

## 🛠️ Requirements

- **Neovim** 0.9.0+
- **Tmux** (latest)
- **Zsh** 
- **Git**
- **Node.js** (for some LSP servers)
- **Nerd Font** (for icons)

## ⚙️ Customization

Feel free to modify any configurations in the `config/` directory to suit your preferences:

- **Neovim**: Edit files in `config/nvim/`
- **Tmux**: Modify `config/tmux.conf`
- **Zsh**: Update `config/zshrc`

## 🤝 Contributing

Contributions welcome! Feel free to open issues or submit pull requests.

## 📄 License

This project is licensed under the MIT License.
