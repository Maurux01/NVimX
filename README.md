# Neovim Config - Custom LazyVim

A blazing fast and modern Neovim configuration based on LazyVim, with all the great features you had before and many more.

## 🚀 Features

### **LazyVim Base (already included):**
- **LSP** - Full support for multiple languages
- **Autocompletion** - nvim-cmp with LSP
- **Snippets** - LuaSnip with friendly-snippets
- **Telescope** - Fast file and text search
- **nvim-tree** - File explorer
- **toggleterm** - Integrated terminal
- **gitsigns** - Git integration
- **bufferline** - Buffer tabs
- **lualine** - Modern statusline
- **which-key** - Organized keybinds
- **notify** - Elegant notifications
- **surround** - Text surrounding
- **comment** - Smart commenting
- **autopairs** - Automatic bracket closing
- **indent-blankline** - Visual indentation
- **treesitter** - Modern syntax highlighting

### **Added Customizations:**
- **Tokyo Night** - Dark theme with pastel colors
- **mini.animate** - Smooth animations
- **Optimized keybinds** - Organized by letter
- **Pastel colors** - For search, selection, etc.
- **Enhanced LSP config** - With inlay hints
- **Custom Telescope** - Better layout and keybinds
- **Optimized nvim-tree** - Clean configuration
- **Floating toggleterm** - Sleeker terminal
- **Minimal gitsigns** - Only essentials

### **🆕 NEW FEATURES ADDED:**

#### **🔧 Debugging (DAP)**
- **nvim-dap** - Full Debug Adapter Protocol support
- **nvim-dap-ui** - Visual debugging interface
- **nvim-dap-virtual-text** - Virtual text for debugging
- **telescope-dap** - Telescope integration
- **Multi-language support** - Python, JavaScript, Go, Rust

#### **🧪 Testing Framework**
- **Neotest** - Complete testing framework
- **Adapters for multiple languages** - Python, JavaScript, Go, Rust
- **DAP integration** - Test debugging
- **Results view** - Test summary and output

#### **💬 Enhanced Notifications**
- **Noice** - Improved UI for commands and notifications
- **nvim-notify** - Elegant, configurable notifications
- **Message history** - Access previous messages
- **Auto-dismiss** - Automatic notification closing

#### **💾 Session Management**
- **Persistence** - Automatic session saving
- **Auto-session** - Automatic session management
- **Smart restore** - Recover your previous work
- **Branch sessions** - Separate sessions per Git branch

#### **🌐 Web Development Tools**
- **Emmet** - Fast HTML/CSS code expansion
- **Prettier** - Automatic code formatting
- **CSS/HTML LSP** - Enhanced web development support
- **Colorizer** - Color highlighting in CSS/HTML
- **Rainbow** - Colored parentheses and brackets

#### **🔍 Improved Diagnostics View**
- **Trouble** - Better error and warning view
- **Organized diagnostics** - Better error navigation
- **Improved quickfix** - Clearer error list
- **Visual references** - LSP reference view

#### **🎨 Theme Switcher**
- **Multiple themes** - Tokyo Night, Catppuccin, Gruvbox, OneDark, Dracula
- **Toggle with keybind** - `<leader>ut` to switch theme
- **Change notification** - Visual feedback when changing theme

#### **✨ Smooth Animations**
- **mini.animate** - Animations for cursor, scroll, windows
- **Smooth transitions** - Window open/close
- **Animated scroll** - Smooth cursor movement
- **Animated resize** - Animated resizing

## ⌨️ Main Keybinds

### **Navigation:**
- `<leader>ff` - Find files
- `<leader>fg` - Find text
- `<leader>e` - File explorer (Telescope)
- `<leader>fe` - File browser
- `<leader>fr` - Resume last search
- `<leader>t` - Terminal

### **Buffers (Improved):**
- `<C-l>` - Next buffer
- `<C-h>` - Previous buffer
- `<leader>bd` - Close buffer
- `<leader>bp` - Pick buffer
- `<leader>1-9` - Go to buffer 1-9

### **Windows:**
- `<C-w>h/j/k/l` - Navigate windows
- `<C-w>v` - Vertical split
- `<C-w>s` - Horizontal split
- `<C-w>c` - Close window
- `<C-w>o` - Close other windows

### **LSP:**
- `gd` - Go to definition
- `gr` - References
- `K` - Hover
- `<leader>ca` - Code action
- `<leader>rn` - Rename
- `<leader>f` - Format

### **🔧 Debugging (DAP):**
- `<leader>db` - Toggle breakpoint
- `<leader>dc` - Continue
- `<leader>di` - Step into
- `<leader>do` - Step out
- `<leader>dO` - Step over
- `<leader>dt` - Terminate
- `<leader>dr` - Toggle REPL

### **🧪 Testing (Neotest):**
- `<leader>tt` - Run test
- `<leader>tf` - Run file tests
- `<leader>td` - Debug test
- `<leader>ts` - Test summary
- `<leader>to` - Test output

### **💾 Sessions:**
- `<leader>qs` - Restore session
- `<leader>ql` - Restore last session
- `<leader>qd` - Don't save session

### **🔍 Trouble (Diagnostics):**
- `<leader>xx` - Diagnostics
- `<leader>xw` - Workspace diagnostics
- `<leader>xl` - Location list
- `<leader>xq` - Quickfix list

### **💬 Noice:**
- `<leader>snl` - Last message
- `<leader>snh` - History
- `<leader>sna` - All messages
- `<leader>un` - Dismiss notifications

### **🎨 Theme Switching:**
- `<leader>ut` - Toggle theme (cycle through themes)
- `<leader>uN` - Next theme
- `<leader>uP` - Previous theme
- `<leader>u1` - Tokyo Night
- `<leader>u2` - Catppuccin
- `<leader>u3` - Gruvbox
- `<leader>u4` - OneDark
- `<leader>u5` - Dracula

### **🌐 Web Development:**
- `<C-y>` - Emmet expand
- `<leader>fp` - Format with Prettier

### **Surround:**
- `ys` - Add surround
- `ds` - Delete surround
- `cs` - Change surround

### **Comments:**
- `<leader>/` - Comment line
- `<leader>cb` - Comment block

### **Buffer Navigation (Improved):**
- `<C-l>` - Next buffer
- `<C-h>` - Previous buffer
- `<leader>bd` - Close buffer
- `<leader>bp` - Pick buffer
- `<leader>1-9` - Go to buffer 1-9

### **Tab Navigation:**
- `<leader>tn` - New tab
- `<leader>tc` - Close tab
- `<leader>tl` - Next tab
- `<leader>th` - Previous tab

## 🎨 Theme

**Tokyo Night** with custom pastel colors:
- Search with pastel orange
- Selection with pastel blue
- Parentheses with pastel blue
- Line numbers with yellow
- Cursor with orange

**Theme Switcher** with 5 themes:
- Tokyo Night (default)
- Catppuccin
- Gruvbox
- OneDark
- Dracula

## ⚡ Performance

- **LazyVim** - Optimized and fast config
- **Lazy loading** - Plugins load only when needed
- **Smooth animations** - With mini.animate
- **Fast startup** - No unnecessary plugins

## 🛠️ Installation

1. **Clone this repository:**
   ```bash
   git clone <your-repo> ~/.config/nvim
   ```

2. **Install dependencies:**
   ```bash
   # Ripgrep (for Telescope)
   sudo pacman -S ripgrep fd
   
   # Node.js (for LSP)
   sudo pacman -S nodejs npm
   
   # Python (for debugging and testing)
   sudo pacman -S python python-pip
   
   # Go (optional, for Go LSP)
   sudo pacman -S go
   
   # Rust (optional, for Rust LSP)
   sudo pacman -S rust
   ```

3. **Open Neovim:**
   ```bash
   nvim
   ```

4. **LazyVim will install everything automatically**

## 📁 Structure

```
nvim/
├── init.lua              # Main configuration
├── lua/
│   ├── config/
│   │   ├── keymaps.lua   # Custom keybinds
│   │   └── options.lua   # Custom options
│   └── plugins/
│       ├── colorscheme.lua    # Tokyo Night
│       ├── mini-animate.lua   # Animations
│       ├── telescope.lua      # Search
│       ├── telescope.lua       # Search and explorer
│       ├── toggleterm.lua     # Terminal
│       ├── gitsigns.lua       # Git
│       ├── lsp.lua            # LSP
│       ├── autopairs.lua      # Autopairs
│       ├── comment.lua        # Comments
│       ├── surround.lua       # Surround
│       ├── indent-blankline.lua # Indentation
│       ├── dap.lua            # Debugging
│       ├── neotest.lua        # Testing
│       ├── noice.lua          # Notifications
│       ├── sessions.lua       # Sessions
│       ├── webdev.lua         # Web development
│       ├── theme-toggle.lua   # Theme switcher
│       └── example.lua        # Example
└── README.md
```

## 🎯 Key Features

### **🔧 Complete Debugging:**
- Visual breakpoints
- Step into/out/over
- Variables and watches
- Integrated REPL
- Elegant UI

### **🧪 Testing Framework:**
- Automatic tests
- Test debugging
- Results view
- Multiple languages

### **💬 Elegant Notifications:**
- Improved UI
- Message history
- Auto-dismiss
- Visual commands

### **💾 Smart Sessions:**
- Automatic saving
- Restore by branch
- Persistent sessions
- Recover work

### **🌐 Web Development:**
- Emmet for HTML/CSS
- Automatic Prettier
- Enhanced LSP
- Color highlighting

### **🔍 Improved Diagnostics:**
- Organized view
- Easy navigation
- Improved quickfix
- Visual references

### **🎨 Complete Theme Switcher:**
- 5 themes included (Tokyo Night, Catppuccin, Gruvbox, OneDark, Dracula)
- Quick toggle with `<leader>ut`
- Navigation with `<leader>uN` and `<leader>uP`
- Direct access to themes with `<leader>u1-5`
- Change notification
- Easy configuration

### **✨ Smooth Animations:**
- Animated cursor
- Smooth scroll
- Window open/close
- Resizing

### **Pastel Colors:**
- Search with pastel orange
- Selection with pastel blue
- Parentheses with pastel blue
- Line numbers with yellow

### **Enhanced LSP:**
- Inlay hints for TypeScript/JavaScript
- Diagnostics with icons
- Intelligent autocompletion
- Automatic snippets

### **Floating Terminal:**
- Sleek curved borders
- Transparency
- Navigation with Ctrl+h/j/k/l

### **Enhanced Telescope:**
- Integrated file browser
- Search with fd
- Hidden files included
- Search history
- Improved navigation

## 🔧 Personalization

### **Change Theme:**
Edit `lua/plugins/theme-toggle.lua` and change the theme.

### **Add Plugins:**
Create files in `lua/plugins/` with the configuration.

### **Modify Keybinds:**
Edit `lua/config/keymaps.lua` for your preferences.

### **Configure LSP:**
Edit `lua/plugins/lsp.lua` to add servers.

### **Configure DAP:**
Edit `lua/plugins/dap.lua` to add adapters.

## 📚 Supported Languages

- **Lua** - Full support
- **JavaScript/TypeScript** - LSP + Treesitter + Testing + Debugging
- **Python** - LSP + Treesitter + Testing + Debugging
- **Go** - LSP + Treesitter + Testing + Debugging
- **Rust** - LSP + Treesitter + Testing + Debugging
- **C/C++** - LSP + Treesitter
- **HTML/CSS** - LSP + Treesitter + Emmet + Prettier
- **JSON/YAML** - LSP + Treesitter
- **Markdown** - Treesitter
- **Bash** - Treesitter

## 🎉 Enjoy your new Neovim experience!

With LazyVim you get:
- **Extreme speed** - Lazy loading
- **Complete functionality** - Everything you need
- **Professional debugging** - Full DAP support
- **Testing framework** - Neotest integrated
- **Web development** - Complete tools
- **Smart sessions** - Recover your work
- **Elegant notifications** - Improved UI
- **Theme switcher** - Multiple themes
- **Smooth animations** - Fluid experience
- **Easy customization** - Clear structure
- **Simple maintenance** - LazyVim updates automatically

Your Neovim is now ultra fast, modern, and complete! 🚀
