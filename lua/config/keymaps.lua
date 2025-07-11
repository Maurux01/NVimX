-- lua/config/keymaps.lua
-- Keybinds modernos para Neovim IDE

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Ventanas
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-w>k', opts)
map('n', '<C-l>', '<C-w>l', opts)

-- Buffers
map('n', '<S-l>', ':bnext<CR>', opts)
map('n', '<S-h>', ':bprevious<CR>', opts)

-- Manejo de archivos y buffers
map('n', '<leader>n', ':enew<CR>', { desc = 'Nuevo buffer' })
map('n', '<leader>N', ':new<CR>', { desc = 'Nueva ventana horizontal' })
map('n', '<leader>v', ':vnew<CR>', { desc = 'Nueva ventana vertical' })
map('n', '<leader>bd', ':bd<CR>', { desc = 'Cerrar buffer' })
map('n', '<leader>bD', ':bd!<CR>', { desc = 'Cerrar buffer sin guardar' })
map('n', '<leader>ba', ':bufdo bd<CR>', { desc = 'Cerrar todos los buffers' })
map('n', '<leader>bl', ':ls<CR>', { desc = 'Listar buffers' })

-- Navegación rápida entre buffers
map('n', '<leader>1', ':b1<CR>', { desc = 'Buffer 1' })
map('n', '<leader>2', ':b2<CR>', { desc = 'Buffer 2' })
map('n', '<leader>3', ':b3<CR>', { desc = 'Buffer 3' })
map('n', '<leader>4', ':b4<CR>', { desc = 'Buffer 4' })
map('n', '<leader>5', ':b5<CR>', { desc = 'Buffer 5' })
map('n', '<leader>6', ':b6<CR>', { desc = 'Buffer 6' })
map('n', '<leader>7', ':b7<CR>', { desc = 'Buffer 7' })
map('n', '<leader>8', ':b8<CR>', { desc = 'Buffer 8' })
map('n', '<leader>9', ':b9<CR>', { desc = 'Buffer 9' })
map('n', '<leader>0', ':blast<CR>', { desc = 'Último buffer' })

-- Bufferline (navegación con pestañas)
map('n', '<Tab>', ':BufferLineCycleNext<CR>', { desc = 'Siguiente buffer' })
map('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { desc = 'Buffer anterior' })
map('n', '<leader>bc', ':BufferLinePickClose<CR>', { desc = 'Cerrar buffer seleccionado' })
map('n', '<leader>bp', ':BufferLinePick<CR>', { desc = 'Seleccionar buffer' })
map('n', '<leader>bm', ':BufferLineMoveNext<CR>', { desc = 'Mover buffer siguiente' })
map('n', '<leader>bM', ':BufferLineMovePrev<CR>', { desc = 'Mover buffer anterior' })

-- Crear archivos específicos
map('n', '<leader>fl', ':e ~/.config/nvim/init.lua<CR>', { desc = 'Abrir init.lua' })
map('n', '<leader>fp', ':e ~/.config/nvim/lua/plugins.lua<CR>', { desc = 'Abrir plugins.lua' })
map('n', '<leader>fk', ':e ~/.config/nvim/lua/config/keymaps.lua<CR>', { desc = 'Abrir keymaps.lua' })
map('n', '<leader>ft', ':e ~/.config/nvim/lua/config/theme.lua<CR>', { desc = 'Abrir theme.lua' })

-- Guardar, cerrar, etc
map('n', '<leader>w', ':w<CR>', opts)
map('n', '<leader>q', ':q<CR>', opts)
map('n', '<leader>Q', ':qa!<CR>', opts)

-- Explorador de archivos
map('n', '<leader>e', ':NvimTreeToggle<CR>', { desc = 'Toggle nvim-tree' })

-- Terminal
map('n', '<leader>t', ':ToggleTerm<CR>', { desc = 'Toggle terminal' })

-- Búsqueda con Telescope
map('n', '<leader>ff', ':Telescope find_files<CR>', { desc = 'Buscar archivos' })
map('n', '<leader>fg', ':Telescope live_grep<CR>', { desc = 'Buscar texto' })
map('n', '<leader>fb', ':Telescope buffers<CR>', { desc = 'Buffers' })
map('n', '<leader>fh', ':Telescope help_tags<CR>', { desc = 'Ayuda' })
map('n', '<leader>fs', ':Telescope lsp_document_symbols<CR>', { desc = 'Símbolos del documento' })
map('n', '<leader>fw', ':Telescope lsp_workspace_symbols<CR>', { desc = 'Símbolos del workspace' })
map('n', '<leader>fd', ':Telescope diagnostics<CR>', { desc = 'Diagnósticos' })
map('n', '<leader>fr', ':Telescope lsp_references<CR>', { desc = 'Referencias' })
map('n', '<leader>fi', ':Telescope lsp_implementations<CR>', { desc = 'Implementaciones' })
map('n', '<leader>ft', ':Telescope lsp_type_definitions<CR>', { desc = 'Definiciones de tipo' })
map('n', '<leader>fc', ':Telescope colorscheme<CR>', { desc = 'Cambiar tema' })
map('n', '<leader>fm', ':Telescope marks<CR>', { desc = 'Marcas' })
map('n', '<leader>fR', ':Telescope registers<CR>', { desc = 'Registros' })
map('n', '<leader>fo', ':Telescope file_browser<CR>', { desc = 'Explorador de archivos' })
map('n', '<leader>fk', ':Telescope keymaps<CR>', { desc = 'Keymaps' })
map('n', '<leader>fC', ':Telescope commands<CR>', { desc = 'Comandos' })

-- LSP
map('n', 'gd', vim.lsp.buf.definition, { desc = 'Ir a definición' })
map('n', 'gr', vim.lsp.buf.references, { desc = 'Referencias' })
map('n', 'gi', vim.lsp.buf.implementation, { desc = 'Implementación' })
map('n', 'K', vim.lsp.buf.hover, { desc = 'Documentación' })
map('n', '<leader>rn', vim.lsp.buf.rename, { desc = 'Renombrar' })
map('n', '<leader>ca', vim.lsp.buf.code_action, { desc = 'Acción de código' })
map('n', '<leader>f', vim.lsp.buf.format, { desc = 'Formatear' })

-- Diagnósticos y errores
map('n', '<leader>d', ':TroubleToggle<CR>', { desc = 'Toggle diagnostics' })
map('n', '[d', vim.diagnostic.goto_prev, { desc = 'Diagnóstico anterior' })
map('n', ']d', vim.diagnostic.goto_next, { desc = 'Diagnóstico siguiente' })
map('n', '<leader>dl', vim.diagnostic.setloclist, { desc = 'Lista de diagnósticos' })
map('n', '<leader>df', vim.diagnostic.open_float, { desc = 'Mostrar diagnóstico' })
map('n', '<leader>dh', vim.diagnostic.hide, { desc = 'Ocultar diagnósticos' })
map('n', '<leader>ds', vim.diagnostic.show, { desc = 'Mostrar diagnósticos' })

-- Manejo específico de errores
map('n', '<leader>ee', ':TroubleToggle workspace_diagnostics<CR>', { desc = 'Errores del workspace' })
map('n', '<leader>ed', ':TroubleToggle document_diagnostics<CR>', { desc = 'Errores del documento' })
map('n', '<leader>eq', ':TroubleToggle quickfix<CR>', { desc = 'Quickfix' })
map('n', '<leader>el', ':TroubleToggle loclist<CR>', { desc = 'Loclist' })
map('n', '<leader>er', ':TroubleToggle lsp_references<CR>', { desc = 'Referencias LSP' })

-- Git
map('n', '<leader>gs', ':Gitsigns preview_hunk<CR>', { desc = 'Ver cambio' })
map('n', '<leader>gb', ':Gitsigns blame_line<CR>', { desc = 'Blame' })
map('n', '<leader>gc', ':Gitsigns next_hunk<CR>', { desc = 'Siguiente cambio' })
map('n', '<leader>gC', ':Gitsigns prev_hunk<CR>', { desc = 'Anterior cambio' })

-- Testing
map('n', '<leader>tt', ":lua require('neotest').run.run()<CR>", { desc = 'Test actual' })
map('n', '<leader>tf', ":lua require('neotest').run.run(vim.fn.expand('%'))<CR>", { desc = 'Test archivo' })

-- Debugging
map('n', '<F5>', ":lua require'dap'.continue()<CR>", { desc = 'DAP continuar' })
map('n', '<F10>', ":lua require'dap'.step_over()<CR>", { desc = 'DAP step over' })
map('n', '<F11>', ":lua require'dap'.step_into()<CR>", { desc = 'DAP step into' })
map('n', '<F12>', ":lua require'dap'.step_out()<CR>", { desc = 'DAP step out' })
map('n', '<leader>db', ":lua require'dap'.toggle_breakpoint()<CR>", { desc = 'Toggle breakpoint' })
map('n', '<leader>du', ":lua require'dapui'.toggle()<CR>", { desc = 'Toggle DAP UI' })

-- Notificaciones
map('n', '<leader>nd', ":lua require('notify').dismiss()<CR>", { desc = 'Cerrar notificación' })
map('n', '<leader>na', ":lua require('notify').dismiss({ silent = true, pending = true })<CR>", { desc = 'Cerrar todas las notificaciones' })
map('n', '<leader>nh', ":lua require('notify').history()<CR>", { desc = 'Historial de notificaciones' })

-- Aerial (outline del código)
map('n', '<leader>o', ':AerialToggle<CR>', { desc = 'Toggle outline' })
map('n', '<leader>O', ':AerialOpen<CR>', { desc = 'Abrir outline' })

-- Modo Zen y Twilight
map('n', '<leader>z', ':ZenMode<CR>', { desc = 'Modo Zen' })
map('n', '<leader>t', ':Twilight<CR>', { desc = 'Twilight' })

-- Animaciones (mini.animate) no requiere keybinds

-- Mejorar búsqueda
map('n', 'n', 'nzzzv', { desc = 'Next search result' })
map('n', 'N', 'Nzzzv', { desc = 'Previous search result' })
map('n', '<leader>hl', ':nohlsearch<CR>', { desc = 'Clear search highlight' })

-- Mejorar yanking
map('n', 'Y', 'y$', { desc = 'Yank to end of line' })

-- Mejorar indenting
map('v', '<', '<gv', { desc = 'Indent left' })
map('v', '>', '>gv', { desc = 'Indent right' })

-- Mejorar escape
map('i', 'jj', '<Esc>', { desc = 'Escape' })
map('i', 'jk', '<Esc>', { desc = 'Escape' })

-- Selección rápida
map('n', '<leader>sa', 'ggVG', { desc = 'Seleccionar todo' })
map('n', '<leader>sl', 'V', { desc = 'Seleccionar línea actual' })
map('n', '<leader>sw', 'viw', { desc = 'Seleccionar palabra actual' })
map('n', '<leader>sp', 'vip', { desc = 'Seleccionar párrafo' })
map('n', '<leader>sb', 'vib', { desc = 'Seleccionar bloque' })
map('n', '<leader>sf', 'vif', { desc = 'Seleccionar función' })

-- Selección visual mejorada
map('v', '<leader>sa', '<Esc>ggVG', { desc = 'Seleccionar todo' })
map('v', '<leader>sl', '<Esc>V', { desc = 'Seleccionar línea actual' })
map('v', '<leader>sw', '<Esc>viw', { desc = 'Seleccionar palabra actual' })
map('v', '<leader>sp', '<Esc>vip', { desc = 'Seleccionar párrafo' })
map('v', '<leader>sb', '<Esc>vib', { desc = 'Seleccionar bloque' })
map('v', '<leader>sf', '<Esc>vif', { desc = 'Seleccionar función' })

-- Manipulación de texto
map('n', '<leader>dd', 'dd', { desc = 'Eliminar línea' })
map('n', '<leader>yy', 'yy', { desc = 'Copiar línea' })
map('n', '<leader>p', 'p', { desc = 'Pegar después' })
map('n', '<leader>P', 'P', { desc = 'Pegar antes' })
map('n', '<leader>u', 'u', { desc = 'Deshacer' })
map('n', '<leader><C-r>', '<C-r>', { desc = 'Rehacer' })

-- Duplicar línea
map('n', '<leader>dl', 'yyp', { desc = 'Duplicar línea' })
map('n', '<leader>dL', 'yyP', { desc = 'Duplicar línea arriba' })

-- Mover líneas
map('n', '<leader>j', ':m .+1<CR>==', { desc = 'Mover línea abajo' })
map('n', '<leader>k', ':m .-2<CR>==', { desc = 'Mover línea arriba' })
map('v', '<leader>j', ':m \'>+1<CR>gv=gv', { desc = 'Mover selección abajo' })
map('v', '<leader>k', ':m \'<-2<CR>gv=gv', { desc = 'Mover selección arriba' })

-- Textobjects (Treesitter)
-- Los keybinds están configurados automáticamente:
-- af/if - Seleccionar función (outer/inner)
-- ac/ic - Seleccionar clase (outer/inner)
-- al/il - Seleccionar loop (outer/inner)
-- ab/ib - Seleccionar bloque (outer/inner)
-- ap/ip - Seleccionar parámetro (outer/inner)
-- am/im - Seleccionar llamada (outer/inner)
-- as/is - Seleccionar statement (outer/inner)
-- ]m/[m - Ir a siguiente/anterior función
-- ]] /[[ - Ir a siguiente/anterior clase
-- <leader>a/<leader>A - Intercambiar parámetros

-- Keybinds para cambiar de tema rápido
map('n', '<leader>1', ":SetTheme gruvbox<CR>", { desc = 'Tema Gruvbox' })
map('n', '<leader>2', ":SetTheme tokyonight<CR>", { desc = 'Tema TokyoNight' })
map('n', '<leader>3', ":SetTheme catppuccin<CR>", { desc = 'Tema Catppuccin' })
map('n', '<leader>4', ":SetTheme onedark<CR>", { desc = 'Tema OneDark' })
map('n', '<leader>5', ":SetTheme dracula<CR>", { desc = 'Tema Dracula' })
map('n', '<leader>6', ":SetTheme nightfox<CR>", { desc = 'Tema Nightfox' })

-- Keybind para recargar configuración
map('n', '<leader>r', ':luafile %<CR>', { desc = 'Reload config (archivo actual)' })

-- Keybind para abrir config
map('n', '<leader>c', ':e $MYVIMRC<CR>', { desc = 'Abrir config principal' })

-- Keybind para abrir README
map('n', '<leader>m', ':e README.md<CR>', { desc = 'Abrir README' })

-- Keybind para ayuda
map('n', '<leader>h', ':WhichKey<CR>', { desc = 'Mostrar ayuda de keybinds' })

-- Keybind para rainbow brackets (si está instalado)
map('n', '<leader>rb', ":TSHighlightCapturesUnderCursor<CR>", { desc = 'Rainbow brackets (TS)' })

-- Comentarios (Comment.nvim)
-- Los keybinds están configurados automáticamente:
-- <leader>cc - Comentar línea
-- <leader>cb - Comentar bloque
-- <leader>c - Comentar en modo visual
-- <leader>b - Comentar bloque en modo visual
-- <leader>cO - Comentar línea arriba
-- <leader>co - Comentar línea abajo
-- <leader>cA - Comentar al final de línea 