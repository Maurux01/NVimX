-- lua/config/which-key.lua
-- Configuración de which-key

require('which-key').setup({
  plugins = {
    marks = true,
    registers = true,
    spelling = {
      enabled = true,
      suggestions = 20,
    },
  },
  icons = {
    breadcrumb = '»',
    separator = '➜',
    group = '+',
  },
  window = {
    border = 'rounded',
    position = 'bottom',
    margin = { 1, 0, 1, 0 },
    padding = { 2, 2, 2, 2 },
  },
  layout = {
    height = { min = 4, max = 25 },
    width = { min = 20, max = 50 },
    spacing = 3,
    align = 'left',
  },
  ignore_missing = true,
  hidden = { '<silent>', '<cmd>', '<Cmd>', '<CR>', 'call', 'lua', '^:', '^ ' },
  show_help = true,
  show_keys = true,
  triggers = 'auto',
  triggers_blacklist = {
    i = { 'j', 'k' },
    v = { 'j', 'k' },
  },
  disable = {
    buftypes = {},
    filetypes = { 'TelescopePrompt' },
  },
})

-- Registrar grupos de keybinds
require('which-key').register({
  ['<leader>'] = {
    e = { 'Explorador de archivos' },
    t = { 'Terminal' },
    w = { 'Guardar' },
    q = { 'Cerrar' },
    f = { 'Formatear' },
    d = { 'Diagnósticos' },
    g = { 'Git' },
    r = { 'Renombrar' },
    c = { 'Acción de código' },
  },
  g = {
    d = { 'Ir a definición' },
    r = { 'Referencias' },
    i = { 'Implementación' },
  },
  ['['] = {
    d = { 'Diagnóstico anterior' },
  },
  [']'] = {
    d = { 'Diagnóstico siguiente' },
  },
}) 