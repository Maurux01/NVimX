# 📋 Buffer Navigation Guide

Guía completa para navegar entre buffers en Neovim con LazyVim.

## ⌨️ Keybinds Principales

### 🔄 Navegación con Tab (Recomendado)
| Keybind | Acción |
|---------|--------|
| `<Tab>` | Siguiente buffer |
| `<S-Tab>` | Buffer anterior |

**Funciona en:**
- Modo Normal
- Modo Insert

### 🎯 Navegación Rápida
| Keybind | Acción |
|---------|--------|
| `<leader>bb` | Cambiar al otro buffer |
| `<leader>` ` | Cambiar al otro buffer |
| `<leader><tab>` | Cambiar al otro buffer |

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

## 🔍 Búsqueda de Buffers

### Telescope Buffer Finder
| Keybind | Acción |
|---------|--------|
| `<leader>bf` | Buscar buffer con Telescope |

### Lista de Buffers
| Keybind | Acción |
|---------|--------|
| `<leader>bl` | Mostrar lista de buffers |

## 🔧 Gestión de Buffers

### Crear y Guardar
| Keybind | Acción |
|---------|--------|
| `<leader>bn` | Nuevo buffer |
| `<leader>bs` | Guardar buffer actual |
| `<leader>ba` | Guardar todos los buffers |

### Cerrar Buffers
| Keybind | Acción |
|---------|--------|
| `<leader>bd` | Cerrar buffer |
| `<leader>bD` | Forzar cierre de buffer |
| `<leader>bc` | Cerrar ventana |
| `<leader>bo` | Cerrar otros buffers |

## 📊 Información de Buffers

### Estado y Ayuda
| Keybind | Acción |
|---------|--------|
| `<leader>bi` | Mostrar información del buffer |
| `<leader>bh` | Mostrar ayuda de navegación |

## 🚀 Flujo de Trabajo Recomendado

### 1. Navegación Diaria
```bash
# Usar Tab para navegar rápidamente
<Tab>      # Siguiente buffer
<S-Tab>    # Buffer anterior
```

### 2. Navegación Específica
```bash
# Ir a un buffer específico
<leader>1  # Buffer 1
<leader>2  # Buffer 2
# etc...
```

### 3. Búsqueda de Buffers
```bash
# Cuando tienes muchos buffers abiertos
<leader>bf  # Buscar con Telescope
```

### 4. Gestión de Buffers
```bash
# Guardar trabajo
<leader>bs  # Guardar buffer actual
<leader>ba  # Guardar todos

# Cerrar buffers
<leader>bd  # Cerrar buffer actual
<leader>bo  # Cerrar otros buffers
```

## 💡 Consejos de Uso

### ✅ Mejores Prácticas
1. **Usa Tab** para navegación rápida entre 2-3 buffers
2. **Usa números** para buffers específicos que usas frecuentemente
3. **Usa Telescope** cuando tienes muchos buffers abiertos
4. **Cierra buffers** que no necesites para mantener la lista limpia

### 🎯 Casos de Uso Comunes

#### Desarrollo con Múltiples Archivos
```bash
# Navegar entre archivos de código
<Tab>      # Siguiente archivo
<S-Tab>    # Archivo anterior
<leader>bf # Buscar archivo específico
```

#### Edición de Configuración
```bash
# Navegar entre archivos de config
<leader>1  # Config principal
<leader>2  # Plugins
<leader>3  # Keymaps
```

#### Documentación
```bash
# Navegar entre archivos de documentación
<Tab>      # Siguiente documento
<leader>bs # Guardar cambios
```

## 🔧 Comandos Útiles

### Comandos de Vim
```vim
:ls          " Listar buffers
:bnext       " Siguiente buffer
:bprevious   " Buffer anterior
:buffer N    " Ir al buffer N
:bd          " Cerrar buffer
:wall        " Guardar todos
```

### Telescope
```vim
:Telescope buffers  " Buscar buffers
```

## 🚨 Solución de Problemas

### Tab No Funciona
1. Verifica que no haya conflictos con otros plugins
2. Asegúrate de que el archivo `buffer-keymaps.lua` esté cargado
3. Usa `<leader>bh` para verificar que los keybinds estén activos

### Buffer No Se Cierra
1. Usa `<leader>bD` para forzar el cierre
2. Verifica si hay cambios sin guardar
3. Usa `:bd!` para forzar cierre

### Muchos Buffers Abiertos
1. Usa `<leader>bf` para buscar específicamente
2. Cierra buffers innecesarios con `<leader>bd`
3. Usa `<leader>bo` para cerrar otros buffers

---

💡 **Consejo**: Presiona `<leader>bh` para ver todos los keybinds de buffers disponibles. 