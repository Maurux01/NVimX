# 🚀 Enhanced Neovim Configuration

A powerful Neovim configuration built on top of [LazyVim](https://github.com/LazyVim/LazyVim) with AI assistants, enhanced syntax highlighting, rainbow brackets, beautiful dark themes, and comprehensive buffer navigation.

![Neovim](https://img.shields.io/badge/Neovim-57A143?style=for-the-badge&logo=neovim&logoColor=white)
![Lua](https://img.shields.io/badge/Lua-2C2D72?style=for-the-badge&logo=lua&logoColor=white)
![LazyVim](https://img.shields.io/badge/LazyVim-57A143?style=for-the-badge&logo=neovim&logoColor=white)

## 📋 Table of Contents

- [✨ Features](#-features)
- [🚀 Quick Start](#-quick-start)
- [⌨️ Keymaps](#️-keymaps)
- [🎨 Theme Gallery](#-theme-gallery)
- [🔧 Configuration](#-configuration)
- [🚨 Troubleshooting](#-troubleshooting)
- [📁 File Structure](#-file-structure)

---

## ✨ Features


### 🤖 AI-Powered Development
- **GitHub Copilot** - Intelligent code completion with comprehensive keymaps
- **Copilot Chat** - Integrated AI chat assistant (requires Ollama)
- **Codeium** - Free AI assistant (no authentication required)

### 🎨 Enhanced Visual Experience
- **Rainbow Delimiters** - Colorful brackets and parentheses with 7 different colors
- **Indent Guides** - Visual indentation indicators with context highlighting
- **Enhanced Treesitter** - Superior syntax highlighting for 20+ languages

### 🌙 Beautiful Dark Themes (23 Total)
- **Tokyo Night** - Elegant and modern dark theme
- **Catppuccin** - Soothing mocha-flavored theme
- **Gruvbox** - Classic high-contrast theme
- **Dracula** - Vibrant and eye-catching theme
- **One Dark** - Atom-inspired dark theme
- **Material** - Google Material Design inspired theme
- **Nightfox** - Soft, warm dark theme for night sessions
- **Kanagawa** - Traditional Japanese-inspired theme
- **Rose Pine** - All natural pine, soot, and lilac theme
- **Monokai Pro** - Professional dark theme with vibrant colors
- **Sonokai** - High contrast and vivid color theme
- **Edge** - Clean, elegant and colorful theme
- **Oceanic Next** - Dark theme based on Oceanic Next
- **Palenight** - Soothing dark theme for the evening
- **Nord** - Clean and minimal Arctic-inspired theme
- **Everforest** - Nature-inspired warm dark theme
- **Doom One** - Doom Emacs inspired dark theme
- **Carbonfox** - Carbon-inspired dark theme
- **Oxocarbon** - IBM Carbon design system inspired
- **Melange** - Warm and cozy dark theme
- **Modus Vivendi** - Accessible high-contrast dark theme
- **Vim One** - Enhanced One Dark theme
- **Papercolor** - Material Design inspired dark theme

**🔄 Persistent Theme System** - Your theme choice is automatically saved and restored between sessions

### 🛠️ Developer Tools
- **Smart Comments** - Intelligent commenting system with `gc` and `gcc`
- **Auto Pairs** - Automatic bracket/parenthesis closing
- **Advanced Search** - Powerful search and replace with Spectre
- **Floating Terminal** - Integrated terminal experience with `<C-\>`
- **Modern File Explorer** - Neo-tree file browser with `<leader>e`

### 📁 Enhanced Buffer Navigation
- **Tab Navigation** - Use `<Tab>` and `<S-Tab>` to cycle through buffers
- **Numbered Buffers** - Quick access to buffers 1-10 with `<leader>1-9` and `<leader>0`
- **Buffer Management** - Save, close, and manage buffers efficiently
- **Telescope Integration** - Find buffers with `<leader>bf`

---

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

---

## ⌨️ Keymaps

### 🎨 Theme Switching (Persistent)
| Keymap | Action |
|--------|--------|
| `<leader>tn` | **Cycle to next theme** (saved automatically) |
| `<leader>tt` | Tokyo Night theme (saved) |
| `<leader>tc` | Catppuccin theme (saved) |
| `<leader>tg` | Gruvbox theme (saved) |
| `<leader>td` | Dracula theme (saved) |
| `<leader>to` | One Dark theme (saved) |
| `<leader>tm` | Material theme (saved) |
| `<leader>tf` | Nightfox theme (saved) |
| `<leader>tk` | Kanagawa theme (saved) |
| `<leader>tr` | Rose Pine theme (saved) |
| `<leader>tp` | Monokai Pro theme (saved) |
| `<leader>ts` | Sonokai theme (saved) |
| `<leader>te` | Edge theme (saved) |
| `<leader>t.` | Oceanic Next theme (saved) |
| `<leader>ta` | Palenight theme (saved) |
| `<leader>tn` | Nord theme (saved) |
| `<leader>tv` | Everforest theme (saved) |
| `<leader>td` | Doom One theme (saved) |
| `<leader>tx` | Carbonfox theme (saved) |
| `<leader>tx` | Oxocarbon theme (saved) |
| `<leader>tl` | Melange theme (saved) |
| `<leader>tm` | Modus Vivendi theme (saved) |
| `<leader>to` | Vim One theme (saved) |
| `<leader>tp` | Papercolor theme (saved) |
| `<leader>t?` | Show current theme status |
| `<leader>tl` | List all available themes |

### 🤖 AI Assistants
| Keymap | Action |
|--------|--------|
| `<C-j>` | Next Copilot suggestion (Insert mode) |
| `<C-k>` | Previous Copilot suggestion (Insert mode) |
| `<C-l>` | Accept Copilot suggestion (Insert mode) |
| `<C-h>` | Dismiss Copilot suggestion (Insert mode) |
| `<leader>cp` | Open Copilot panel |
| `<leader>cs` | Show Copilot status |
| `<leader>cc` | Open Copilot Chat |
| `<leader>ct` | Toggle Copilot Chat |
| `<C-;>` | Accept Codeium suggestion (Insert mode) |
| `<leader>ai` | Show AI keymaps help |

### 📁 Buffer Navigation
| Keymap | Action |
|--------|--------|
| `<Tab>` | **Next buffer** |
| `<S-Tab>` | **Previous buffer** |
| `<leader>bb` | Switch to other buffer |
| `<leader>1-9` | Go to buffer 1-9 |
| `<leader>0` | Go to buffer 10 |
| `<leader>bf` | Find buffer with Telescope |
| `<leader>bl` | List all buffers |
| `<leader>bn` | New buffer |
| `<leader>bs` | Save current buffer |
| `<leader>ba` | Save all buffers |
| `<leader>bd` | Close buffer |
| `<leader>bD` | Force close buffer |
| `<leader>bo` | Close other buffers |
| `<leader>bi` | Show buffer info |
| `<leader>bh` | Show buffer navigation help |

### 🛠️ Development Tools
| Keymap | Action |
|--------|--------|
| `<leader>e` | Toggle file explorer (Neo-tree) |
| `<leader>sr` | Advanced search and replace (Spectre) |
| `<C-\>` | Toggle floating terminal |
| `gc` | Toggle line comment |
| `gcc` | Toggle current line comment |

### 🔧 Debug & Testing
| Keymap | Action |
|--------|--------|
| `<leader>debug` | Debug theme keymaps |
| `<leader>leader` | Check leader key |
| `<leader>direct` | Test direct theme change |
| `<leader>test` | Test theme change |
| `<leader>cycle` | Simple theme cycle |
| `<leader>check` | Check if leader key works |

### LazyVim Defaults
All standard LazyVim keymaps are preserved. Press `<leader>` to see available commands.

---

## 🎨 Theme Gallery

### Original Themes
| Theme | Keybind | Description |
|-------|---------|-------------|
| **Tokyo Night** | `<leader>tt` | Elegant and modern |
| **Catppuccin** | `<leader>tc` | Suave with "mocha" flavor |
| **Gruvbox** | `<leader>tg` | Classic with high contrast |
| **Dracula** | `<leader>td` | Vibrant and eye-catching |
| **One Dark** | `<leader>to` | Atom-inspired |

### New Themes
| Theme | Keybind | Description |
|-------|---------|-------------|
| **Material** | `<leader>tm` | Google Material Design |
| **Nightfox** | `<leader>tf` | Soft and warm for nights |
| **Kanagawa** | `<leader>tk` | Japanese art inspired |
| **Rose Pine** | `<leader>tr` | Natural colors |
| **Monokai Pro** | `<leader>tp` | Professional with vibrant colors |
| **Sonokai** | `<leader>ts` | High contrast and vivid |
| **Edge** | `<leader>te` | Clean, elegant and colorful |
| **Oceanic Next** | `<leader>t.` | Relaxing oceanic palette |
| **Palenight** | `<leader>ta` | Soothing for evenings |
| **Nord** | `<leader>tn` | Clean and minimal |
| **Everforest** | `<leader>tv` | Nature-inspired warm |
| **Doom One** | `<leader>td` | Doom Emacs inspired |
| **Carbonfox** | `<leader>tx` | Carbon-inspired |
| **Oxocarbon** | `<leader>tx` | IBM Carbon design |
| **Melange** | `<leader>tl` | Warm and cozy |
| **Modus Vivendi** | `<leader>tm` | Accessible high-contrast |
| **Vim One** | `<leader>to` | Enhanced One Dark |
| **Papercolor** | `<leader>tp` | Material Design inspired |

### Theme Usage Recommendations
- **Daily Development**: Tokyo Night, Catppuccin, Material, Nord
- **Night Sessions**: Nightfox, Palenight, Kanagawa, Everforest
- **Creative Design**: Rose Pine, Dracula, Monokai Pro, Doom One
- **Reading**: One Dark, Edge, Gruvbox, Modus Vivendi
- **Professional**: Carbonfox, Oxocarbon, Vim One
- **Warm & Cozy**: Melange, Papercolor

---

## 🔧 Configuration

### File Structure
```
~/.config/nvim/
├── init.lua                 # Entry point
├── lua/
│   ├── config/
│   │   ├── autocmds.lua     # Auto commands
│   │   ├── keymaps.lua      # Main key mappings loader
│   │   ├── lazy.lua         # Lazy.nvim setup
│   │   ├── options.lua      # Neovim options
│   │   ├── theme-keymaps.lua # Theme switching system
│   │   ├── ai-keymaps.lua   # AI assistant keymaps
│   │   ├── buffer-keymaps.lua # Buffer navigation
│   │   ├── theme-persistence.lua # Theme persistence
│   │   ├── theme-debug.lua  # Theme debugging
│   │   └── test-themes.lua  # Theme testing
│   └── plugins/
│       ├── custom.lua       # Custom plugins (777 lines)
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
- **Theme keymaps**: Edit `lua/config/theme-keymaps.lua`
- **AI keymaps**: Edit `lua/config/ai-keymaps.lua`
- **Buffer keymaps**: Edit `lua/config/buffer-keymaps.lua`
- **General keymaps**: Edit `lua/config/keymaps.lua`

#### Changing Options
Edit `lua/config/options.lua` to modify Neovim options.

---

## 🚨 Troubleshooting

### 🤖 AI Issues

#### GitHub Authentication Error
**Error**: `fatal error, we couldn't read username for github.com`

**Solutions**:
1. **For Copilot**: Ensure you have a valid subscription
2. **For Copilot Chat**: Install `ollama` and run `ollama serve`
3. **Alternative**: Use Codeium (free, no authentication required)

#### AI Not Working
1. **Check installation**: `:Lazy sync`
2. **Check logs**: `:Lazy log`
3. **Temporarily disable**: Comment plugins in `lua/plugins/custom.lua`

### 🎨 Theme Issues

#### Theme Not Changing
1. **Check keybinds**: `<leader>debug`
2. **Test direct**: `<leader>direct`
3. **Check installation**: `:Lazy sync`

#### Theme Not Saving
1. **Check permissions**: `~/.local/share/nvim/`
2. **Test manual**: `<leader>t?`
3. **Check logs**: `:Lazy log`

### 🔌 Plugin Issues

#### Lazy.nvim Not Installing
1. **Check connection**: Internet
2. **Clean cache**: `:Lazy clean`
3. **Sync**: `:Lazy sync`
4. **Check logs**: `:Lazy log`

#### Plugin Conflicts
1. **Check duplicates**: `:Lazy check`
2. **Disable conflicting**: `enabled = false`
3. **Check dependencies**: Ensure they're installed

### 🐛 General Issues

#### Neovim Slow
1. **Check startup time**: `:StartupTime`
2. **Disable heavy plugins**: Comment in `custom.lua`
3. **Use lazy loading**: `event = "VeryLazy"`

#### Keymaps Not Working
1. **Check leader**: `<leader>leader`
2. **Check conflicts**: `:map <key>`
3. **Restart Neovim**: To apply changes

### 🔧 Debug Commands

| Command | Action |
|---------|--------|
| `:checkhealth` | Check system health |
| `:Lazy health` | Check plugins |
| `:Lazy log` | View plugin logs |
| `:Lazy sync` | Sync plugins |
| `<leader>debug` | Debug theme keybinds |

### 📝 Information for Bug Reports

When reporting issues, include:
1. **Neovim version**: `nvim --version`
2. **Operating system**: Windows/macOS/Linux
3. **Error messages**: Exact copy
4. **Steps to reproduce**: What you did
5. **Debug info**: `:checkhealth`

---

## 🎯 Supported Languages

Enhanced syntax highlighting for:
- **Web**: HTML, CSS, JavaScript, TypeScript, TSX, SCSS
- **Backend**: Python, Rust, Go, Lua, SQL
- **Config**: JSON, YAML, TOML, Dockerfile
- **Markup**: Markdown, Gitignore
- **Shell**: Bash, HTTP

---

## 💡 Usage Tips

### 🎯 Recommended Workflow
1. **Start Neovim** and wait for plugins to load
2. **Use Tab** to navigate between buffers quickly
3. **Change themes** with `<leader>tn` to explore
4. **Use AI** for autocompletion and assistance
5. **Save work** with `<leader>bs` or `<leader>ba`

### 🔧 Customization Tips
- **Add plugins**: Edit `lua/plugins/custom.lua`
- **Modify keymaps**: Edit files in `lua/config/`
- **Change options**: Edit `lua/config/options.lua`
- **Custom themes**: Modify `lua/plugins/custom.lua`

### 🎨 Theme Selection Tips
- **Daily development**: Tokyo Night, Catppuccin, Material
- **Night sessions**: Nightfox, Palenight, Kanagawa
- **Creative design**: Rose Pine, Dracula, Monokai Pro
- **Reading**: One Dark, Edge, Gruvbox

---

## 📚 Additional Resources

- [LazyVim Documentation](https://www.lazyvim.org/)
- [Neovim Documentation](https://neovim.io/doc/)
- [GitHub Copilot](https://github.com/features/copilot)
- [Ollama](https://ollama.ai/)

---

💡 **Tip**: Press `<leader>bh` for buffer navigation help and `<leader>t?` to see current theme status.

## 🤖 How to Use AI Features

This configuration includes three powerful AI assistants:

### 1. GitHub Copilot
- **Autocompletion**: As you type, Copilot will suggest code completions.
- **Keymaps**:
  - `<C-j>`: Next suggestion (Insert mode)
  - `<C-k>`: Previous suggestion (Insert mode)
  - `<C-l>`: Accept suggestion (Insert mode)
  - `<C-h>`: Dismiss suggestion (Insert mode)
  - `<leader>cp`: Open Copilot panel (Normal mode)
  - `<leader>cs`: Show Copilot status (Normal mode)
- **Requirements**: You need a valid GitHub Copilot subscription and to be logged in with `:Copilot setup`.

### 2. Copilot Chat
- **Chat with AI**: Ask Copilot questions about your code, get explanations, or generate code snippets.
- **Keymaps**:
  - `<leader>cc`: Open Copilot Chat
  - `<leader>ct`: Toggle Copilot Chat
- **Requirements**: Requires [Ollama](https://ollama.ai/) running locally. Install and start with `ollama serve`.

### 3. Codeium
- **Free AI Autocompletion**: Works similar to Copilot but does not require authentication.
- **Keymap**:
  - `<C-;>`: Accept Codeium suggestion (Insert mode)
- **Advantages**: No GitHub account required, works out of the box.

### 📋 AI Keymaps Help
- Press `<leader>ai` in Normal mode to see a summary of all AI keymaps in a popup.

---

## 🙏 Credits

This configuration is built on top of the amazing [LazyVim](https://github.com/LazyVim/LazyVim) starter template, which provides a modern, modular, and extensible Neovim setup. All credit for the base structure, plugin management, and many best practices goes to the LazyVim team and contributors.

If you like this setup, please consider starring [LazyVim](https://github.com/LazyVim/LazyVim) and supporting their work!

---
