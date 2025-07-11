-- lua/config/colorizer.lua
-- Configuración de nvim-colorizer

require('colorizer').setup({
  '*',
  css = { rgb_fn = true; hsl_fn = true; css = true; css_fn = true; },
  html = { names = true; },
}, {
  mode = 'background',
  RRGGBBAA = true,
  rgb_fn = true,
  hsl_fn = true,
  css = true,
  css_fn = true,
}) 