# 🚀 Custom Neovim Configuration

Esta configuración extiende LazyVim con plugins adicionales para IA, resaltado de sintaxis, brackets de colores y temas oscuros.

## 🤖 AI Assistants

### GitHub Copilot
- **Plugin**: `github/copilot.vim`
- **Descripción**: Autocompletado inteligente de código
- **Keymaps**:
  - `<C-j>` - Siguiente sugerencia (Insert mode)
  - `<C-k>` - Sugerencia anterior (Insert mode)
  - `<C-l>` - Aceptar sugerencia (Insert mode)
  - `<C-h>` - Descartar sugerencia (Insert mode)
  - `<leader>cp` - Panel de Copilot (Normal mode)
  - `<leader>cs` - Estado de Copilot (Normal mode)

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
- **Keymaps**:
  - `<C-;>` - Aceptar sugerencia (Insert mode)
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

## ⌨️ Keymaps

### 🤖 AI Assistants
- `<C-j>` - Siguiente sugerencia de Copilot (Insert mode)
- `<C-k>` - Sugerencia anterior de Copilot (Insert mode)
- `<C-l>` - Aceptar sugerencia de Copilot (Insert mode)
- `<C-h>` - Descartar sugerencia de Copilot (Insert mode)
- `<leader>cp` - Panel de Copilot (Normal mode)
- `<leader>cs` - Estado de Copilot (Normal mode)
- `<leader>cc` - Abrir Copilot Chat
- `<leader>ct` - Toggle Copilot Chat
- `<C-;>` - Aceptar sugerencia de Codeium (Insert mode)
- `<leader>ai` - Mostrar ayuda de keymaps de IA

### 🎨 Theme Keymaps

### Cambio de Temas (Persistentes)

#### Temas Originales
- `<leader>tn` - Siguiente tema (cicla entre todos) - **Se guarda automáticamente**
- `<leader>tt` - Tokyo Night - **Se guarda automáticamente**
- `<leader>tc` - Catppuccin - **Se guarda automáticamente**
- `<leader>tg` - Gruvbox - **Se guarda automáticamente**
- `<leader>td` - Dracula - **Se guarda automáticamente**
- `<leader>to` - One Dark - **Se guarda automáticamente**

#### Nuevos Temas
- `<leader>tm` - Material - **Se guarda automáticamente**
- `<leader>tf` - Nightfox - **Se guarda automáticamente**
- `<leader>tk` - Kanagawa - **Se guarda automáticamente**
- `<leader>tr` - Rose Pine - **Se guarda automáticamente**
- `<leader>tp` - Monokai Pro - **Se guarda automáticamente**
- `<leader>ts` - Sonokai - **Se guarda automáticamente**
- `<leader>te` - Edge - **Se guarda automáticamente**
- `<leader>t.` - Oceanic Next - **Se guarda automáticamente**
- `<leader>ta` - Palenight - **Se guarda automáticamente**

### Gestión de Temas
- `<leader>t?` - Mostrar estado del tema actual
- `<leader>tl` - Listar todos los temas disponibles

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