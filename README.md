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

## Images
<img width="1512" height="982" alt="Screenshot 2025-07-21 at 8 49 57 PM" src="https://github.com/user-attachments/assets/5442b023-989d-459d-b5f5-662450a89833" />
<img width="1512" height="982" alt="Screenshot 2025-07-21 at 8 52 51 PM" src="https://github.com/user-attachments/assets/4a9e5810-e4c9-4e23-8606-68f4d978e273" />
<img width="1512" height="982" alt="Screenshot 2025-07-21 at 8 55 39 PM" src="https://github.com/user-attachments/assets/a29447e6-d6e8-4865-a442-65c5e2a54c20" />



## 🚀 Super Quick Start
- If you already have your terminal setup, replace your ~/.config/nvim folder with this one. Be sure to rename your old nvim not delete for easy rollback.

### Quick Start

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

## SOUTOUTS!
- [telescope](https://github.com/nvim-telescope/telescope.nvim)
- [Dracula Pro](https://draculatheme.com/pro)
- [kitty](https://sw.kovidgoyal.net/kitty/)
- [mason](https://github.com/mason-org/mason.nvim)

## 📄 License

This project is licensed under the MIT License.
