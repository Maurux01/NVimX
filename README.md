# 🚀 Neovim IDE - Configuración Avanzada

Una configuración moderna y completa de Neovim con resaltado de sintaxis avanzado, autocompletado inteligente y herramientas de desarrollo integradas.

## ✨ Características Principales

### 🎨 **Resaltado de Sintaxis Avanzado**
- **Treesitter** - Resaltado de sintaxis moderno y preciso
- **Rainbow Delimiters** - Paréntesis y brackets con colores anidados
- **Colorizer** - Resaltado de códigos de color
- **Múltiples temas** - Gruvbox, Tokyo Night, Catppuccin, OneDark, Dracula, Nightfox

### 💬 **Comentarios Inteligentes**
- **Comment.nvim** - Comentarios automáticos y inteligentes
- **Keybinds optimizados** para comentar líneas y bloques
- **Soporte multi-lenguaje** para diferentes estilos de comentarios

### 🔍 **Búsqueda y Navegación**
- **Telescope** - Búsqueda de archivos, texto y símbolos
- **File Browser** - Explorador de archivos integrado
- **Live Grep** - Búsqueda de texto en tiempo real
- **LSP Symbols** - Navegación por símbolos del código

### ⌨️ **Autocompletado y Pairs**
- **nvim-cmp** - Autocompletado inteligente con LSP
- **mini.pairs** - Cierre automático de paréntesis y brackets
- **LuaSnip** - Snippets avanzados
- **Friendly Snippets** - Snippets predefinidos

### 🛠️ **Herramientas de Desarrollo**
- **LSP** - Soporte completo para múltiples lenguajes
- **Mason** - Gestión de herramientas LSP
- **Trouble** - Diagnósticos y errores
- **Git Integration** - Gitsigns y Fugitive
- **Testing** - Neotest para testing
- **Debugging** - DAP para debugging

## 🎯 **Keybinds Principales**

### 🔍 **Búsqueda (Telescope)**
```
<leader>ff    - Buscar archivos
<leader>fg    - Buscar texto (live grep)
<leader>fb    - Buffers abiertos
<leader>fs    - Símbolos del documento
<leader>fw    - Símbolos del workspace
<leader>fd    - Diagnósticos
<leader>fr    - Referencias
<leader>fi    - Implementaciones
<leader>ft    - Definiciones de tipo
<leader>fc    - Cambiar tema de colores
<leader>fm    - Marcas
<leader>fR    - Registros
<leader>fo    - Explorador de archivos
<leader>fk    - Keymaps
<leader>fC    - Comandos
```

### 💬 **Comentarios**
```
<leader>cc    - Comentar línea
<leader>cb    - Comentar bloque
<leader>c     - Comentar en modo visual
<leader>b     - Comentar bloque en modo visual
<leader>cO    - Comentar línea arriba
<leader>co    - Comentar línea abajo
<leader>cA    - Comentar al final de línea
```

### 🎨 **Temas de Colores**
```
<leader>1     - Tema Gruvbox
<leader>2     - Tema TokyoNight
<leader>3     - Tema Catppuccin
<leader>4     - Tema OneDark
<leader>5     - Tema Dracula
<leader>6     - Tema Nightfox
```

### 🛠️ **Desarrollo**
```
gd           - Ir a definición
gr           - Referencias
gi           - Implementación
K            - Documentación
<leader>rn   - Renombrar
<leader>ca   - Acción de código
<leader>f    - Formatear código
```

### 🐛 **Debugging**
```
<F5>         - Continuar debugging
<F10>        - Step over
<F11>        - Step into
<F12>        - Step out
<leader>db   - Toggle breakpoint
<leader>du   - Toggle DAP UI
```

### 🧪 **Testing**
```
<leader>tt   - Test actual
<leader>tf   - Test archivo
```

## 📦 **Plugins Instalados**

### 🎨 **Temas y UI**
- `gruvbox.nvim` - Tema principal
- `tokyonight.nvim` - Tema moderno
- `catppuccin/nvim` - Tema elegante
- `onedark.nvim` - Tema oscuro
- `dracula.nvim` - Tema clásico
- `nightfox.nvim` - Tema moderno y estable
- `nvim-web-devicons` - Iconos
- `mini.animate` - Animaciones

### 🔍 **Búsqueda y Navegación**
- `telescope.nvim` - Búsqueda avanzada
- `telescope-fzf-native.nvim` - FZF para Telescope
- `telescope-file-browser.nvim` - Explorador de archivos
- `telescope-ui-select.nvim` - UI select para Telescope
- `nvim-tree.lua` - Explorador de archivos

### 💬 **Comentarios y Pairs**
- `Comment.nvim` - Comentarios inteligentes
- `mini.pairs` - Autocompletado de brackets

### 🛠️ **LSP y Autocompletado**
- `nvim-lspconfig` - Configuración LSP
- `mason.nvim` - Gestión de herramientas
- `mason-lspconfig.nvim` - Integración Mason-LSP
- `nvim-cmp` - Autocompletado
- `cmp-nvim-lsp` - LSP para CMP
- `cmp-buffer` - Buffer para CMP
- `cmp-path` - Path para CMP
- `cmp-cmdline` - Cmdline para CMP
- `cmp_luasnip` - Snippets para CMP
- `lspkind-nvim` - Iconos para CMP

### 📝 **Snippets**
- `LuaSnip` - Motor de snippets
- `friendly-snippets` - Snippets predefinidos

### 🌳 **Treesitter**
- `nvim-treesitter` - Parsing de sintaxis
- `nvim-treesitter-context` - Contexto de código
- `rainbow-delimiters.nvim` - Colores de brackets
- `nvim-colorizer.lua` - Resaltado de colores

### 🐛 **Debugging y Testing**
- `nvim-dap` - Debugging
- `nvim-dap-ui` - UI para debugging
- `neotest` - Testing framework
- `neotest-vim-test` - Vim test para Neotest
- `neotest-python` - Python para Neotest

### 🎯 **Utilidades**
- `which-key.nvim` - Ayuda de keybinds
- `trouble.nvim` - Diagnósticos
- `noice.nvim` - UI mejorada
- `nvim-notify` - Notificaciones
- `dressing.nvim` - UI mejorada
- `gitsigns.nvim` - Git integration
- `vim-fugitive` - Git commands
- `toggleterm.nvim` - Terminal integrado
- `lualine.nvim` - Statusline

## 🚀 **Instalación**

1. **Clonar la configuración:**
```bash
git clone <tu-repo> ~/.config/nvim
```

2. **Instalar dependencias:**
```bash
# Ripgrep (para Telescope)
sudo pacman -S ripgrep

# Node.js (para LSP)
sudo pacman -S nodejs npm

# Python (para algunos LSP)
sudo pacman -S python python-pip
```

3. **Abrir Neovim:**
```bash
nvim
```

4. **Instalar plugins:**
   ```
   :PackerSync
   ```

## 🎨 **Personalización**

### Cambiar Tema
```vim
:SetTheme tokyonight
:SetTheme catppuccin
:SetTheme gruvbox
```

### Ver Keybinds
```vim
:WhichKey
```

### Recargar Configuración
```vim
:luafile %
```

## 🔧 **Configuración Avanzada**

### Agregar Nuevo Lenguaje LSP
Editar `lua/config/lsp.lua` y agregar el servidor LSP deseado.

### Personalizar Keybinds
Editar `lua/config/keymaps.lua` para modificar los keybinds.

### Agregar Nuevo Tema
1. Agregar el plugin en `lua/plugins.lua`
2. Crear configuración en `lua/config/theme-*.lua`
3. Agregar keybind en `lua/config/keymaps.lua`

## 📚 **Lenguajes Soportados**

- **Lua** - Soporte completo
- **JavaScript/TypeScript** - LSP + Treesitter
- **Python** - LSP + Treesitter
- **Go** - LSP + Treesitter
- **Rust** - LSP + Treesitter
- **C/C++** - LSP + Treesitter
- **HTML/CSS** - LSP + Treesitter
- **JSON/YAML** - LSP + Treesitter
- **Markdown** - Treesitter + preview
- **Bash** - Treesitter
- **Docker** - Treesitter

## 🎯 **Características Destacadas**

### 🌈 **Rainbow Delimiters**
Los paréntesis y brackets se muestran con colores diferentes según su nivel de anidación, facilitando la lectura del código.

### 💬 **Comentarios Inteligentes**
- Comentarios automáticos según el lenguaje
- Keybinds optimizados para comentar líneas y bloques
- Soporte para comentarios de documentación

### 🔍 **Búsqueda Avanzada**
- Búsqueda fuzzy de archivos
- Búsqueda de texto en todo el proyecto
- Navegación por símbolos LSP
- Explorador de archivos integrado

### ⌨️ **Autocompletado Inteligente**
- Autocompletado basado en LSP
- Snippets automáticos
- Cierre automático de brackets
- Sugerencias contextuales

## 🤝 **Contribuir**

1. Fork el proyecto
2. Crear una rama para tu feature
3. Commit tus cambios
4. Push a la rama
5. Abrir un Pull Request

## 📄 **Licencia**

MIT License - ver archivo LICENSE para detalles.

---

**¡Disfruta tu nueva experiencia de desarrollo con Neovim! 🚀** 