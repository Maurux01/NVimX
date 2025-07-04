# 🎨 Theme Persistence System

El sistema de persistencia de temas guarda automáticamente tu elección de tema y la restaura en cada sesión de Neovim.

## 🔄 ¿Cómo Funciona?

### Guardado Automático
- Cada vez que cambias de tema usando los keybinds, se guarda automáticamente
- El tema se almacena en: `~/.local/share/nvim/current_theme.txt`
- No necesitas hacer nada manualmente

### Restauración Automática
- Al abrir Neovim, se carga automáticamente el último tema usado
- Si no hay tema guardado, se usa Tokyo Night por defecto
- Se muestra una notificación confirmando el tema cargado

## ⌨️ Keybinds de Temas

### Cambio de Temas (Persistentes)
| Keymap | Acción | Persistencia |
|--------|--------|--------------|
| `<leader>tn` | Siguiente tema | ✅ Automática |
| `<leader>tt` | Tokyo Night | ✅ Automática |
| `<leader>tc` | Catppuccin | ✅ Automática |
| `<leader>tg` | Gruvbox | ✅ Automática |
| `<leader>td` | Dracula | ✅ Automática |
| `<leader>to` | One Dark | ✅ Automática |

### Gestión de Temas
| Keymap | Acción |
|--------|--------|
| `<leader>ts` | Mostrar estado del tema actual |
| `<leader>tl` | Listar todos los temas disponibles |

## 📁 Archivo de Persistencia

### Ubicación
```
~/.local/share/nvim/current_theme.txt
```

### Contenido
El archivo contiene solo el nombre del tema, por ejemplo:
```
tokyonight
```

### Temas Soportados
- `tokyonight` - Tokyo Night
- `catppuccin` - Catppuccin
- `gruvbox` - Gruvbox
- `dracula` - Dracula
- `onedark` - One Dark
- `material` - Material Theme
- `nightfox` - Nightfox
- `kanagawa` - Kanagawa
- `rose-pine` - Rose Pine
- `monokai-pro` - Monokai Pro
- `sonokai` - Sonokai
- `edge` - Edge
- `oceanicnext` - Oceanic Next
- `palenight` - Palenight

## 🔧 Funciones Disponibles

### Para Desarrolladores
```lua
local theme_persistence = require("config.theme-persistence")

-- Guardar tema
theme_persistence.save_theme("tokyonight")

-- Cargar tema
theme_persistence.load_theme()

-- Obtener tema actual
local current = theme_persistence.get_current_theme()

-- Listar temas con indicador de actual
local themes = theme_persistence.list_themes()

-- Mostrar estado
theme_persistence.show_theme_status()
```

## 🚨 Solución de Problemas

### Tema No Se Guarda
1. Verifica permisos de escritura en `~/.local/share/nvim/`
2. Revisa los logs de Neovim: `:Lazy log`
3. Intenta guardar manualmente: `<leader>ts`

### Tema No Se Restaura
1. Verifica que el archivo existe: `~/.local/share/nvim/current_theme.txt`
2. Comprueba el contenido del archivo
3. Usa `<leader>tl` para ver temas disponibles

### Resetear Tema
```bash
# Eliminar archivo de persistencia
rm ~/.local/share/nvim/current_theme.txt

# Reiniciar Neovim
nvim
```

## 🎯 Características

### ✅ Ventajas
- **Automático**: No requiere configuración manual
- **Confiable**: Funciona en todas las sesiones
- **Rápido**: Carga instantánea del tema
- **Seguro**: Fallback a tema por defecto si hay errores
- **Informativo**: Notificaciones claras del estado

### 🔄 Flujo de Trabajo
1. Abres Neovim → Se carga el tema guardado
2. Cambias de tema → Se guarda automáticamente
3. Cierras Neovim → El tema queda guardado
4. Abres Neovim de nuevo → Se restaura el tema

## 📝 Notas Técnicas

### Prioridad de Carga
- El tema se carga con prioridad alta (`priority = 1000`)
- Se ejecuta en el evento `VimEnter`
- Se carga antes que otros plugins

### Manejo de Errores
- Si el archivo no existe → Tema por defecto
- Si el tema no es válido → Tema por defecto
- Si hay error de lectura → Tema por defecto
- Notificaciones informativas en todos los casos

### Compatibilidad
- Funciona con todos los temas incluidos
- Compatible con LazyVim
- No interfiere con otros plugins
- Funciona en Windows, macOS y Linux 