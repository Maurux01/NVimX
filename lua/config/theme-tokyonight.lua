-- lua/config/theme-tokyonight.lua
-- Configuración de Tokyo Night

require('tokyonight').setup({
  style = 'night',
  transparent = false,
  terminal_colors = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = 'dark',
    floats = 'dark',
  },
  sidebars = { 'qf', 'help', 'terminal', 'NvimTree' },
  day_brightness = 0.3,
  hide_inactive_statusline = false,
  dim_inactive = false,
  lualine_bold = false,
  on_colors = function(colors)
    colors.hint = colors.orange1
    colors.error = colors.red1
  end,
  on_highlights = function(hl, c)
    local prompt = '#2d3149'
    hl.TelescopeNormal = {
      bg = c.bg_dark,
      fg = c.fg_dark,
    }
    hl.TelescopeBorder = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopeSelectionCaret = {
      fg = c.fg_dark,
      bg = c.bg_dark,
    }
    hl.TelescopeSelection = {
      fg = c.fg_dark,
      bg = c.bg_dark,
    }
    hl.TelescopePromptTitle = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePromptNormal = {
      bg = prompt,
    }
    hl.TelescopeResultsTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopeResultsNormal = {
      bg = c.bg_dark,
    }
    hl.TelescopePreviewTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopePreviewNormal = {
      bg = c.bg_dark,
    }
  end,
})

-- vim.cmd('colorscheme tokyonight') 