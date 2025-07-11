-- lua/config/theme-fallback.lua
-- Sistema de respaldo para temas

local M = {}

-- Lista de temas disponibles en orden de preferencia
local available_themes = {
  'gruvbox',
  'tokyonight',
  'catppuccin',
  'onedark',
  'dracula',
  'nightfox'
}

-- Función para verificar si un tema está disponible
local function is_theme_available(theme_name)
  local success = pcall(function()
    require(theme_name)
  end)
  return success
end

-- Función para aplicar tema con respaldo
function M.apply_theme_with_fallback(theme_name)
  -- Verificar si el tema solicitado está disponible
  if not is_theme_available(theme_name) then
    vim.notify('Tema ' .. theme_name .. ' no está disponible', vim.log.levels.WARN)
    
    -- Buscar un tema alternativo
    for _, fallback_theme in ipairs(available_themes) do
      if is_theme_available(fallback_theme) then
        vim.notify('Usando tema de respaldo: ' .. fallback_theme, vim.log.levels.INFO)
        theme_name = fallback_theme
        break
      end
    end
  end
  
  -- Aplicar el tema con manejo de errores
  local success = pcall(function()
    vim.cmd('colorscheme ' .. theme_name)
  end)
  
  if not success then
    vim.notify('Error aplicando tema ' .. theme_name .. ', usando gruvbox', vim.log.levels.ERROR)
    vim.cmd('colorscheme gruvbox')
    theme_name = 'gruvbox'
  end
  
  return theme_name
end

-- Función para configurar tema específico
function M.setup_theme(theme_name)
  local success = pcall(function()
    if theme_name == 'tokyonight' then
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
      })
    elseif theme_name == 'catppuccin' then
      require('catppuccin').setup({
        flavour = 'mocha',
        transparent_background = false,
        term_colors = true,
        styles = {
          comments = { 'italic' },
          conditionals = { 'italic' },
          loops = {},
          functions = {},
          keywords = {},
          strings = {},
          variables = {},
          numbers = {},
          booleans = {},
          properties = {},
          types = {},
          operators = {},
        },
      })
    elseif theme_name == 'onedark' then
      require('onedark').setup({
        style = 'dark',
        transparent = false,
        term_colors = true,
        ending_tildes = false,
      })
    elseif theme_name == 'dracula' then
      require('dracula').setup({
        transparent_bg = false,
        italic_comment = true,
      })
    elseif theme_name == 'kanagawa' then
      -- Kanagawa removido temporalmente
      vim.notify('Kanagawa no está disponible temporalmente', vim.log.levels.WARN)
      return false
    elseif theme_name == 'nightfox' then
      require('nightfox').setup({
        options = {
          transparent = false,
          terminal_colors = true,
          dim_inactive = false,
          styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
          },
        },
      })
    elseif theme_name == 'rose-pine' then
      -- Rose Pine removido
      vim.notify('Rose Pine no está disponible', vim.log.levels.WARN)
      return false
    end
  end)
  
  if not success then
    vim.notify('Error configurando tema ' .. theme_name, vim.log.levels.WARN)
    return false
  end
  
  return true
end

return M 