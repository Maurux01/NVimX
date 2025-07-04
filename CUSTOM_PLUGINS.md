# 🚀 Custom Neovim Configuration

Esta configuración extiende LazyVim con plugins adicionales para IA, resaltado de sintaxis, brackets de colores y temas oscuros.

## 🤖 AI Assistants

### GitHub Copilot
- **Plugin**: `github/copilot.vim`
- **Descripción**: Autocompletado inteligente de código
- **Configuración**: Deshabilitado el mapeo de Tab para evitar conflictos

### Copilot Chat
- **Plugin**: `CopilotC-Nvim/CopilotChat.nvim`
- **Descripción**: Chat con IA integrado en Neovim
- **Keymaps**:
  - `<leader>cc` - Abrir Copilot Chat
  - `<leader>ct` - Toggle Copilot Chat
- **Requisito**: Instalar `ollama` para usar CopilotChat

### Codeium (Alternativa)
- **Plugin**: `Exafunction/codeium.nvim`
- **Descripción**: Asistente de IA gratuito sin autenticación requerida
- **Ventajas**: No requiere cuenta de GitHub, funciona offline

## 🎨 Syntax Highlighting & Brackets

### Enhanced Treesitter
- **Plugin**: `nvim-treesitter/nvim-treesitter`
- **Descripción**: Resaltado de sintaxis mejorado con soporte para múltiples lenguajes
- **Lenguajes soportados**: bash, css, dockerfile, go, html, http, javascript, json, lua, markdown, python, rust, scss, sql, toml, tsx, typescript, vim, yaml

### Rainbow Delimiters
- **Plugin**: `HiPhish/rainbow-delimiters.nvim`
- **Descripción**: Colorea brackets y paréntesis con diferentes colores
- **Configuración**: 7 colores diferentes para mejor visibilidad

### Indent Blankline
- **Plugin**: `lukas-reineke/indent-blankline.nvim`
- **Descripción**: Muestra líneas de indentación
- **Características**: Resalta el contexto actual de indentación

## 🌙 Dark Themes

### Temas Disponibles
1. **Tokyo Night** - Tema oscuro elegante y moderno
2. **Catppuccin** - Tema suave con sabor "mocha"
3. **Gruvbox** - Tema clásico con contraste alto
4. **Dracula** - Tema oscuro con colores vibrantes
5. **One Dark** - Tema inspirado en Atom

## ⌨️ Theme Keymaps

### Cambio de Temas
- `<leader>tn` - Siguiente tema (cicla entre todos)
- `<leader>tt` - Tokyo Night
- `<leader>tc` - Catppuccin
- `<leader>tg` - Gruvbox
- `<leader>td` - Dracula
- `<leader>to` - One Dark

## 🛠️ Additional Enhancements

### Comment.nvim
- **Plugin**: `numToStr/Comment.nvim`
- **Descripción**: Comentarios inteligentes
- **Uso**: `gc` para comentar líneas, `gcc` para comentar línea actual

### Nvim Autopairs
- **Plugin**: `windwp/nvim-autopairs`
- **Descripción**: Cierre automático de paréntesis, brackets, etc.

### Nvim Spectre
- **Plugin**: `nvim-pack/nvim-spectre`
- **Descripción**: Búsqueda y reemplazo avanzado
- **Keymap**: `<leader>sr` - Abrir Spectre

### Toggleterm
- **Plugin**: `akinsho/toggleterm.nvim`
- **Descripción**: Terminal integrado mejorado
- **Keymap**: `<C-\>` - Toggle terminal flotante

### Neo-tree
- **Plugin**: `nvim-neo-tree/neo-tree.nvim`
- **Descripción**: Explorador de archivos moderno
- **Keymap**: `<leader>e` - Toggle explorador

## 🚀 Instalación

1. Los plugins se instalarán automáticamente al abrir Neovim
2. Para Copilot Chat, instalar `ollama`:
   ```bash
   # Windows (con chocolatey)
   choco install ollama
   
   # macOS
   brew install ollama
   
   # Linux
   curl -fsSL https://ollama.ai/install.sh | sh
   ```

## 📝 Notas

- Todos los temas están configurados en modo oscuro
- El tema por defecto es Tokyo Night
- Los keymaps de temas están integrados con which-key
- La configuración original de LazyVim no se ha modificado

## 🔧 Personalización

Para agregar más plugins, edita `lua/plugins/custom.lua`
Para modificar keymaps, edita `lua/config/theme-keymaps.lua`
Para cambiar opciones, edita `lua/config/options.lua` 