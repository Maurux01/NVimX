# 🚀 Documentación Completa - Neovim con LazyVim

Documentación completa de tu configuración personalizada de Neovim con IA, temas oscuros, navegación mejorada y más.

## 📋 Tabla de Contenidos

- [🤖 Asistentes de IA](#-asistentes-de-ia)
- [🎨 Temas Oscuros](#-temas-oscuros)
- [⌨️ Navegación de Buffers](#️-navegación-de-buffers)
- [🔧 Plugins Adicionales](#-plugins-adicionales)
- [🚨 Solución de Problemas](#-solución-de-problemas)

---

## 🤖 Asistentes de IA

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

---

## 🎨 Temas Oscuros

### 🌟 Temas Disponibles (14 total)

#### Temas Originales
| Keybind | Tema | Descripción |
|---------|------|-------------|
| `<leader>tt` | **Tokyo Night** | Elegante y moderno |
| `<leader>tc` | **Catppuccin** | Suave con sabor "mocha" |
| `<leader>tg` | **Gruvbox** | Clásico con alto contraste |
| `<leader>td` | **Dracula** | Vibrante y llamativo |
| `<leader>to` | **One Dark** | Inspirado en Atom |

#### Nuevos Temas
| Keybind | Tema | Descripción |
|---------|------|-------------|
| `<leader>tm` | **Material** | Diseño Material de Google |
| `<leader>tf` | **Nightfox** | Suave y cálido para noches |
| `<leader>tk` | **Kanagawa** | Inspirado en arte japonés |
| `<leader>tr` | **Rose Pine** | Colores naturales |
| `<leader>tp` | **Monokai Pro** | Profesional con colores vibrantes |
| `<leader>ts` | **Sonokai** | Alto contraste y vívido |
| `<leader>te` | **Edge** | Limpio, elegante y colorido |
| `<leader>t.` | **Oceanic Next** | Paleta oceánica relajante |
| `<leader>ta` | **Palenight** | Reconfortante para noches |

### 🔄 Navegación de Temas

| Keybind | Acción |
|---------|--------|
| `<leader>tn` | **Siguiente tema** (cicla entre todos) |
| `<leader>t?` | Mostrar estado del tema actual |
| `<leader>tl` | Listar todos los temas disponibles |

### 🔄 Sistema de Persistencia

- ✅ **Automático**: Se guarda automáticamente cada cambio
- ✅ **Restauración**: Se carga al abrir Neovim
- ✅ **Ubicación**: `~/.local/share/nvim/current_theme.txt`
- ✅ **Seguro**: Fallback a Tokyo Night si hay errores

---

## ⌨️ Navegación de Buffers

### 🔄 Navegación Principal

| Keybind | Acción |
|---------|--------|
| `<Tab>` | **Siguiente buffer** |
| `<S-Tab>` | **Buffer anterior** |
| `<leader>bb` | Cambiar al otro buffer |

### 🔢 Navegación por Números

| Keybind | Acción |
|---------|--------|
| `<leader>1` | Ir al buffer 1 |
| `<leader>2` | Ir al buffer 2 |
| `<leader>3` | Ir al buffer 3 |
| `<leader>4` | Ir al buffer 4 |
| `<leader>5` | Ir al buffer 5 |
| `<leader>6` | Ir al buffer 6 |
| `<leader>7` | Ir al buffer 7 |
| `<leader>8` | Ir al buffer 8 |
| `<leader>9` | Ir al buffer 9 |
| `<leader>0` | Ir al buffer 10 |

### 🔍 Búsqueda de Buffers

| Keybind | Acción |
|---------|--------|
| `<leader>bf` | Buscar buffer con Telescope |
| `<leader>bl` | Mostrar lista de buffers |

### 🔧 Gestión de Buffers

| Keybind | Acción |
|---------|--------|
| `<leader>bn` | Nuevo buffer |
| `<leader>bs` | Guardar buffer actual |
| `<leader>ba` | Guardar todos los buffers |
| `<leader>bd` | Cerrar buffer |
| `<leader>bD` | Forzar cierre de buffer |
| `<leader>bo` | Cerrar otros buffers |
| `<leader>bi` | Mostrar información del buffer |
| `<leader>bh` | Mostrar ayuda de navegación |

---

## 🔧 Plugins Adicionales

### 🎨 Resaltado de Sintaxis y Brackets

#### Enhanced Treesitter
- **Plugin**: `nvim-treesitter/nvim-treesitter`
- **Descripción**: Resaltado de sintaxis mejorado
- **Lenguajes**: bash, css, dockerfile, go, html, http, javascript, json, lua, markdown, python, rust, scss, sql, toml, tsx, typescript, vim, yaml

#### Rainbow Delimiters
- **Plugin**: `HiPhish/rainbow-delimiters.nvim`
- **Descripción**: Colorea brackets y paréntesis
- **Configuración**: 7 colores diferentes

#### Indent Blankline
- **Plugin**: `lukas-reineke/indent-blankline.nvim`
- **Descripción**: Muestra líneas de indentación
- **Características**: Resalta el contexto actual

### 🛠️ Herramientas de Desarrollo

#### Comment.nvim
- **Plugin**: `numToStr/Comment.nvim`
- **Descripción**: Comentarios inteligentes
- **Uso**: `gc` para comentar líneas, `gcc` para comentar línea actual

#### Nvim Autopairs
- **Plugin**: `windwp/nvim-autopairs`
- **Descripción**: Cierre automático de paréntesis, brackets, etc.

#### Nvim Spectre
- **Plugin**: `nvim-pack/nvim-spectre`
- **Descripción**: Búsqueda y reemplazo avanzado
- **Keymap**: `<leader>sr` - Abrir Spectre

#### Toggleterm
- **Plugin**: `akinsho/toggleterm.nvim`
- **Descripción**: Terminal integrado mejorado
- **Keymap**: `<C-\>` - Toggle terminal flotante

#### Neo-tree
- **Plugin**: `nvim-neo-tree/neo-tree.nvim`
- **Descripción**: Explorador de archivos moderno
- **Keymap**: `<leader>e` - Toggle explorador

---

## 🚨 Solución de Problemas

### 🤖 Problemas con IA

#### Error de Autenticación de GitHub
**Error**: `fatal error, we couldn't read username for github.com`

**Soluciones**:
1. **Para Copilot**: Asegúrate de tener suscripción válida
2. **Para Copilot Chat**: Instala `ollama` y ejecuta `ollama serve`
3. **Alternativa**: Usa Codeium (gratuito, sin autenticación)

#### IA No Funciona
1. **Verifica instalación**: `:Lazy sync`
2. **Revisa logs**: `:Lazy log`
3. **Desactiva temporalmente**: Comenta plugins en `lua/plugins/custom.lua`

### 🎨 Problemas con Temas

#### Tema No Cambia
1. **Verifica keybinds**: `<leader>debug`
2. **Prueba directo**: `<leader>direct`
3. **Revisa instalación**: `:Lazy sync`

#### Tema No Se Guarda
1. **Verifica permisos**: `~/.local/share/nvim/`
2. **Prueba manual**: `<leader>t?`
3. **Revisa logs**: `:Lazy log`

### 🔌 Problemas de Plugins

#### Lazy.nvim No Instala
1. **Verifica conexión**: Internet
2. **Limpia cache**: `:Lazy clean`
3. **Sincroniza**: `:Lazy sync`
4. **Revisa logs**: `:Lazy log`

#### Conflictos de Plugins
1. **Verifica duplicados**: `:Lazy check`
2. **Desactiva conflictivos**: `enabled = false`
3. **Revisa dependencias**: Asegúrate de que estén instaladas

### 🐛 Problemas Generales

#### Neovim Lento
1. **Verifica tiempo**: `:StartupTime`
2. **Desactiva plugins pesados**: Comenta en `custom.lua`
3. **Usa lazy loading**: `event = "VeryLazy"`

#### Keymaps No Funcionan
1. **Verifica leader**: `<leader>leader`
2. **Revisa conflictos**: `:map <key>`
3. **Reinicia Neovim**: Para aplicar cambios

### 🔧 Comandos de Debug

| Comando | Acción |
|---------|--------|
| `:checkhealth` | Verificar salud del sistema |
| `:Lazy health` | Verificar plugins |
| `:Lazy log` | Ver logs de plugins |
| `:Lazy sync` | Sincronizar plugins |
| `<leader>debug` | Debug de keybinds de temas |

### 📝 Información para Reportar Problemas

Cuando reportes un problema, incluye:
1. **Versión de Neovim**: `nvim --version`
2. **Sistema operativo**: Windows/macOS/Linux
3. **Mensajes de error**: Copia exacta
4. **Pasos para reproducir**: Qué hiciste
5. **Información de debug**: `:checkhealth`

---

## 🚀 Instalación y Configuración

### Prerrequisitos
- [Neovim](https://neovim.io/) (0.9.0 o superior)
- [Git](https://git-scm.com/)
- [Node.js](https://nodejs.org/) (para soporte LSP)

### Instalación
1. **Clona el repositorio**:
   ```bash
   git clone <tu-repo> ~/.config/nvim
   cd ~/.config/nvim
   ```

2. **Inicia Neovim**:
   ```bash
   nvim
   ```

3. **Espera la instalación**:
   - Lazy.nvim instalará automáticamente todos los plugins
   - La primera vez puede tomar varios minutos

### Configuración de IA (Opcional)
Para Copilot Chat, instala [Ollama](https://ollama.ai/):
```bash
# macOS
brew install ollama

# Linux
curl -fsSL https://ollama.ai/install.sh | sh

# Windows (con chocolatey)
choco install ollama
```

---

## 📁 Estructura de Archivos

```
~/.config/nvim/
├── init.lua                 # Punto de entrada
├── lua/
│   ├── config/
│   │   ├── autocmds.lua     # Comandos automáticos
│   │   ├── keymaps.lua      # Keymaps principales
│   │   ├── lazy.lua         # Configuración de Lazy.nvim
│   │   ├── options.lua      # Opciones de Neovim
│   │   ├── theme-keymaps.lua # Keymaps de temas
│   │   ├── ai-keymaps.lua   # Keymaps de IA
│   │   └── buffer-keymaps.lua # Keymaps de buffers
│   └── plugins/
│       ├── custom.lua       # Plugins personalizados
│       └── example.lua      # Ejemplos de LazyVim
├── lazy-lock.json          # Lock file de plugins
└── README.md               # Documentación principal
```

---

## 💡 Consejos de Uso

### 🎯 Flujo de Trabajo Recomendado

1. **Inicia Neovim** y espera que se carguen los plugins
2. **Usa Tab** para navegar entre buffers rápidamente
3. **Cambia temas** con `<leader>tn` para explorar
4. **Usa IA** para autocompletado y asistencia
5. **Guarda trabajo** con `<leader>bs` o `<leader>ba`

### 🔧 Personalización

- **Agregar plugins**: Edita `lua/plugins/custom.lua`
- **Modificar keymaps**: Edita los archivos en `lua/config/`
- **Cambiar opciones**: Edita `lua/config/options.lua`
- **Temas personalizados**: Modifica `lua/plugins/custom.lua`

### 🎨 Temas por Uso

- **Desarrollo diario**: Tokyo Night, Catppuccin, Material
- **Sesiones nocturnas**: Nightfox, Palenight, Kanagawa
- **Diseño creativo**: Rose Pine, Dracula, Monokai Pro
- **Lectura**: One Dark, Edge, Gruvbox

---

💡 **Consejo**: Presiona `<leader>bh` para ver ayuda de navegación y `<leader>t?` para ver el estado del tema actual. 