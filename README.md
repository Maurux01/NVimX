# 🚀 Enhanced Neovim Configuration

A powerful Neovim configuration built on top of [LazyVim](https://github.com/LazyVim/LazyVim) with AI assistants, enhanced syntax highlighting, rainbow brackets, and beautiful dark themes.

![Neovim](https://img.shields.io/badge/Neovim-57A143?style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/Lua-2C2D72?style=for-the-badge&logo=lua&logoColor=white)
![LazyVim](https://img.shields.io/badge/LazyVim-57A143?style=for-the-badge&logo=neovim&logoColor=white)

## ✨ Features

### 🤖 AI-Powered Development
- **GitHub Copilot** - Intelligent code completion
- **Copilot Chat** - Integrated AI chat assistant
- **Codeium** - Free AI assistant (no authentication required)

### 🎨 Enhanced Visual Experience
- **Rainbow Delimiters** - Colorful brackets and parentheses
- **Indent Guides** - Visual indentation indicators
- **Enhanced Treesitter** - Superior syntax highlighting for 20+ languages

### 🌙 Beautiful Dark Themes
- **Tokyo Night** - Elegant and modern dark theme
- **Catppuccin** - Soothing mocha-flavored theme
- **Gruvbox** - Classic high-contrast theme
- **Dracula** - Vibrant and eye-catching theme
- **One Dark** - Atom-inspired dark theme

### 🛠️ Developer Tools
- **Smart Comments** - Intelligent commenting system
- **Auto Pairs** - Automatic bracket/parenthesis closing
- **Advanced Search** - Powerful search and replace with Spectre
- **Floating Terminal** - Integrated terminal experience
- **Modern File Explorer** - Neo-tree file browser

## 🚀 Quick Start

### Prerequisites
- [Neovim](https://neovim.io/) (0.9.0 or higher)
- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) (for LSP support)

### Installation

1. **Clone this repository**
   ```bash
   git clone <your-repo-url> ~/.config/nvim
   cd ~/.config/nvim
   ```

2. **Start Neovim**
   ```bash
   nvim
   ```

3. **Wait for installation**
   - Lazy.nvim will automatically install all plugins
   - First startup may take a few minutes

### AI Setup (Optional)

For Copilot Chat functionality, install [Ollama](https://ollama.ai/):

```bash
# macOS
brew install ollama

# Linux
curl -fsSL https://ollama.ai/install.sh | sh

# Windows (with chocolatey)
choco install ollama
```

## ⌨️ Keymaps

### Theme Switching
| Keymap | Action |
|--------|--------|
| `<leader>tn` | Cycle to next theme |
| `<leader>tt` | Tokyo Night theme |
| `<leader>tc` | Catppuccin theme |
| `<leader>tg` | Gruvbox theme |
| `<leader>td` | Dracula theme |
| `<leader>to` | One Dark theme |

### AI Assistants
| Keymap | Action |
|--------|--------|
| `<leader>cc` | Open Copilot Chat |
| `<leader>ct` | Toggle Copilot Chat |

### Development Tools
| Keymap | Action |
|--------|--------|
| `<leader>e` | Toggle file explorer |
| `<leader>sr` | Advanced search and replace |
| `<C-\>` | Toggle floating terminal |
| `gc` | Toggle line comment |
| `gcc` | Toggle current line comment |

### LazyVim Defaults
All standard LazyVim keymaps are preserved. Press `<leader>` to see available commands.

## 🎨 Theme Gallery

### Tokyo Night
![Tokyo Night](https://user-images.githubusercontent.com/292349/115313600-feff9000-a12b-11eb-9a05-9c49c9c0e5c6.png)

### Catppuccin
![Catppuccin](https://user-images.githubusercontent.com/32014449/148675820-aa8b5b8c-8b8c-4c8c-8b8c-8b8c4c8c8b8c.png)

### Gruvbox
![Gruvbox](https://user-images.githubusercontent.com/292349/115313600-feff9000-a12b-11eb-9a05-9c49c9c0e5c6.png)

## 🔧 Configuration

### File Structure
```
~/.config/nvim/
├── init.lua                 # Entry point
├── lua/
│   ├── config/
│   │   ├── autocmds.lua     # Auto commands
│   │   ├── keymaps.lua      # Key mappings
│   │   ├── lazy.lua         # Lazy.nvim setup
│   │   ├── options.lua      # Neovim options
│   │   └── theme-keymaps.lua # Theme switching
│   └── plugins/
│       ├── custom.lua       # Custom plugins
│       └── example.lua      # LazyVim examples
├── lazy-lock.json          # Plugin lock file
└── README.md               # This file
```

### Customization

#### Adding Plugins
Edit `lua/plugins/custom.lua` to add new plugins:

```lua
return {
  {
    "your-plugin/name",
    opts = {
      -- your configuration
    },
  },
}
```

#### Modifying Keymaps
Edit `lua/config/theme-keymaps.lua` for theme-related keymaps or `lua/config/keymaps.lua` for general keymaps.

#### Changing Options
Edit `lua/config/options.lua` to modify Neovim options.

## 🎯 Supported Languages

Enhanced syntax highlighting for:
- **Web**: HTML, CSS, JavaScript, TypeScript, TSX, SCSS
- **Backend**: Python, Rust, Go, Lua, SQL
- **Config**: JSON, YAML, TOML, Dockerfile
- **Markup**: Markdown, Gitignore
- **Shell**: Bash, HTTP

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [LazyVim](https://github.com/LazyVim/LazyVim) - The amazing base configuration
- [Lazy.nvim](https://github.com/folke/lazy.nvim) - The plugin manager
- All plugin authors for their excellent work

## 🔗 Links

- [Neovim](https://neovim.io/)
- [LazyVim Documentation](https://lazyvim.github.io/)
- [Lazy.nvim](https://github.com/folke/lazy.nvim)
- [GitHub Copilot](https://github.com/features/copilot)
- [Ollama](https://ollama.ai/)

---

⭐ **Star this repository if you find it helpful!**
