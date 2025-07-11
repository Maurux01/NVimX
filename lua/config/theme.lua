-- lua/config/theme.lua
-- Configuración de tema y cambio persistente

local theme_fallback = require('config.theme-fallback')

local function set_theme(theme)
  -- Configurar tema con sistema de respaldo
  local final_theme = theme_fallback.apply_theme_with_fallback(theme)
  
  -- Configurar tema específico
  theme_fallback.setup_theme(final_theme)
  
  -- Guardar el tema
  local file = io.open(vim.fn.stdpath('config') .. '/theme.txt', 'w')
  if file then
    file:write(theme)
    file:close()
  end
end

vim.api.nvim_create_user_command('SetTheme', function(opts)
  set_theme(opts.args)
end, { nargs = 1, complete = 'color' })

-- Al iniciar, lee el tema guardado
local theme_file = vim.fn.stdpath('config') .. '/theme.txt'
local file = io.open(theme_file, 'r')
if file then
  local theme = file:read('*l')
  if theme and #theme > 0 then
    set_theme(theme)
  else
    set_theme('gruvbox')
  end
  file:close()
else
  set_theme('gruvbox')
end

-- Opciones visuales
vim.opt.cursorline = true
vim.opt.signcolumn = 'yes'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.fillchars:append { eob = ' ' } 