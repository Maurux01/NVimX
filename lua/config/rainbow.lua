-- lua/config/rainbow.lua
-- Configuración avanzada de rainbow-delimiters

local rainbow_delimiters = require('rainbow-delimiters')

vim.g.rainbow_delimiters = {
  strategy = {
    [''] = rainbow_delimiters.strategy['global'],
    vim = rainbow_delimiters.strategy['local'],
  },
  query = {
    [''] = 'rainbow-delimiters',
    lua = 'rainbow-blocks',
  },
  highlight = {
    'RainbowDelimiterRed',
    'RainbowDelimiterYellow', 
    'RainbowDelimiterBlue',
    'RainbowDelimiterOrange',
    'RainbowDelimiterGreen',
    'RainbowDelimiterViolet',
    'RainbowDelimiterCyan',
  },
}

-- Configuración adicional para mejor visualización
vim.api.nvim_create_autocmd('ColorScheme', {
  callback = function()
    -- Definir colores personalizados para rainbow delimiters
    vim.api.nvim_set_hl(0, 'RainbowDelimiterRed', { fg = '#ff6b6b', bold = true })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterYellow', { fg = '#feca57', bold = true })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterBlue', { fg = '#48dbfb', bold = true })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterOrange', { fg = '#ff9ff3', bold = true })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterGreen', { fg = '#1dd1a1', bold = true })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterViolet', { fg = '#a55eea', bold = true })
    vim.api.nvim_set_hl(0, 'RainbowDelimiterCyan', { fg = '#26de81', bold = true })
  end,
})

-- Aplicar colores inmediatamente
vim.api.nvim_set_hl(0, 'RainbowDelimiterRed', { fg = '#ff6b6b', bold = true })
vim.api.nvim_set_hl(0, 'RainbowDelimiterYellow', { fg = '#feca57', bold = true })
vim.api.nvim_set_hl(0, 'RainbowDelimiterBlue', { fg = '#48dbfb', bold = true })
vim.api.nvim_set_hl(0, 'RainbowDelimiterOrange', { fg = '#ff9ff3', bold = true })
vim.api.nvim_set_hl(0, 'RainbowDelimiterGreen', { fg = '#1dd1a1', bold = true })
vim.api.nvim_set_hl(0, 'RainbowDelimiterViolet', { fg = '#a55eea', bold = true })
vim.api.nvim_set_hl(0, 'RainbowDelimiterCyan', { fg = '#26de81', bold = true }) 