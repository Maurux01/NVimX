# 🔧 Troubleshooting Guide

This guide helps you resolve common issues with the Enhanced Neovim Configuration.

## 🤖 AI Plugin Issues

### GitHub Authentication Errors

**Error**: `fatal error, we couldn't read username for github.com, terminal prompts disabled`

**Cause**: Some AI plugins require GitHub authentication or have issues with credential reading.

**Solutions**:

1. **For Cursor.nvim (now disabled)**:
   - The plugin has been disabled due to authentication issues
   - Use Codeium instead (included in the configuration)

2. **For GitHub Copilot**:
   - Ensure you have a valid GitHub Copilot subscription
   - Authenticate with GitHub: `gh auth login`
   - Or use GitHub CLI: `gh auth login`

3. **For Copilot Chat**:
   - Install Ollama: https://ollama.ai/
   - Ensure Ollama is running: `ollama serve`
   - Pull a model: `ollama pull llama2`

### Alternative AI Solutions

If you continue having issues with AI plugins:

1. **Use Codeium** (already included):
   - Free and doesn't require authentication
   - Works offline
   - Just start typing to see suggestions

2. **Disable AI plugins temporarily**:
   ```lua
   -- In lua/plugins/custom.lua, comment out AI sections
   -- {
   --   "github/copilot.vim",
   --   enabled = false,
   -- },
   ```

## 🎨 Theme Issues

### Theme Not Loading

**Error**: `colorscheme not found`

**Solutions**:

1. **Check if theme is installed**:
   ```vim
   :Lazy sync
   ```

2. **Manually set theme**:
   ```vim
   :colorscheme tokyonight
   ```

3. **Check theme name**:
   - Tokyo Night: `tokyonight`
   - Catppuccin: `catppuccin`
   - Gruvbox: `gruvbox`
   - Dracula: `dracula`
   - One Dark: `onedark`

### Theme Switching Not Working

**Solutions**:

1. **Check keymaps**:
   ```vim
   :map <leader>tn
   ```

2. **Reload configuration**:
   ```vim
   :source ~/.config/nvim/init.lua
   ```

3. **Check which-key**:
   ```vim
   :WhichKey
   ```

## 🔌 Plugin Installation Issues

### Lazy.nvim Not Installing Plugins

**Solutions**:

1. **Check internet connection**

2. **Clear Lazy cache**:
   ```vim
   :Lazy clean
   :Lazy sync
   ```

3. **Check for errors**:
   ```vim
   :Lazy log
   ```

4. **Manual installation**:
   ```vim
   :Lazy install
   ```

### Plugin Conflicts

**Solutions**:

1. **Check for duplicate plugins**:
   ```vim
   :Lazy check
   ```

2. **Disable conflicting plugins**:
   ```lua
   -- In lua/plugins/custom.lua
   {
     "conflicting-plugin",
     enabled = false,
   }
   ```

## 🐛 Common Neovim Issues

### Slow Startup

**Solutions**:

1. **Check startup time**:
   ```vim
   :StartupTime
   ```

2. **Disable heavy plugins temporarily**:
   ```lua
   -- Comment out plugins in lua/plugins/custom.lua
   ```

3. **Use lazy loading**:
   ```lua
   {
     "heavy-plugin",
     event = "VeryLazy",
   }
   ```

### Keymap Conflicts

**Solutions**:

1. **Check existing keymaps**:
   ```vim
   :map <your-key>
   ```

2. **Clear conflicting keymaps**:
   ```vim
   :unmap <conflicting-key>
   ```

3. **Use different keymaps**:
   ```lua
   -- In lua/config/theme-keymaps.lua
   vim.keymap.set("n", "<leader>tx", function() end, { desc = "Custom Theme" })
   ```

## 🔧 Performance Issues

### High CPU Usage

**Solutions**:

1. **Disable heavy features**:
   - Rainbow delimiters
   - Indent blanklines
   - Some AI features

2. **Check for infinite loops**:
   ```vim
   :profile start profile.log
   :profile func *
   :profile file *
   -- Reproduce the issue
   :profile pause
   :q
   ```

3. **Update Neovim**:
   ```bash
   # Check version
   nvim --version
   ```

## 📝 Getting Help

### Debug Information

Collect debug information:

```vim
:checkhealth
:Lazy health
:Telescope help_tags
```

### Log Files

Check log files:

```bash
# Neovim log
~/.local/share/nvim/log/

# Lazy.nvim log
~/.local/share/nvim/lazy/lazy.nvim/log/
```

### Report Issues

When reporting issues, include:

1. **Neovim version**: `nvim --version`
2. **OS and version**
3. **Error messages**
4. **Steps to reproduce**
5. **Debug information**: `:checkhealth`

## 🚀 Quick Fixes

### Reset Configuration

If everything is broken:

```bash
# Backup current config
cp -r ~/.config/nvim ~/.config/nvim.backup

# Remove and reinstall
rm -rf ~/.config/nvim
git clone <your-repo> ~/.config/nvim
```

### Clean Install

```bash
# Remove all Neovim data
rm -rf ~/.local/share/nvim
rm -rf ~/.local/state/nvim
rm -rf ~/.cache/nvim

# Restart Neovim
nvim
```

---

💡 **Tip**: Most issues can be resolved by running `:Lazy sync` and restarting Neovim. 