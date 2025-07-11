-- lua/config/pairs.lua
-- Configuración avanzada de mini.pairs para autocompletado de brackets

local pairs = require('mini.pairs')

pairs.setup({
  -- Configuración de pares
  pairs = {
    { '(', ')' },
    { '[', ']' },
    { '{', '}' },
    { '"', '"' },
    { "'", "'" },
    { '`', '`' },
    { '<', '>' },
  },
  
  -- Configuración de modos
  modes = {
    insert = true,
    command = false,
    terminal = false,
  },
  
  -- Configuración de detección
  detect_brace = true,
  
  -- Configuración de escape
  disable_filetype = { 'TelescopePrompt', 'spectre_panel' },
  
  -- Configuración de comportamiento
  fast_wrap = {
    map = '<M-e>',
    chars = { '{', '[', '(', '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], '%s+', ''),
    offset = 0,
    end_key = '$',
    keys = 'qwertyuiopzxcvbnmasdfghjkl',
    check_comma = true,
    highlight = 'Search',
    highlight_grey = 'Comment',
  },
  
  -- Configuración de autoclose
  autoclose = true,
  
  -- Configuración de balance
  balance = {
    map = '<M-b>',
    mode = 'n',
  },
  
  -- Configuración de surround
  surround = {
    add = '<M-s>',
    delete = '<M-d>',
    find = '<M-f>',
    find_left = '<M-F>',
    highlight = '<M-h>',
    update_n_lines = '<M-u>',
    suffix_last = 'l',
    suffix_next = 'n',
  },
})

-- Configuración adicional para mejor experiencia
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'markdown', 'tex', 'latex' },
  callback = function()
    -- Agregar pares específicos para markdown
    pairs.add_pair('*', '*')
    pairs.add_pair('_', '_')
    pairs.add_pair('`', '`')
  end,
})

-- Configuración para archivos de configuración
vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'lua', 'vim', 'json', 'yaml', 'toml' },
  callback = function()
    -- Asegurar que los pares funcionen correctamente en archivos de config
    pairs.enable()
  end,
}) 