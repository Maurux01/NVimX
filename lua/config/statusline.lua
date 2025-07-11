-- lua/config/statusline.lua
-- Configuración de lualine

require('lualine').setup {
  options = {
    theme = 'gruvbox',
    section_separators = '',
    component_separators = '',
    icons_enabled = true,
    globalstatus = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
} 