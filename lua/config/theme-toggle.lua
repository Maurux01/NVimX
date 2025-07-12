-- Theme Switcher Module
local M = {}

local themes = {
  "tokyonight",
  "catppuccin", 
  "gruvbox",
  "onedark",
  "dracula",
}

local current_theme_index = 1
local theme_file = vim.fn.stdpath('config') .. '/current_theme.txt'

local function save_theme(theme_name)
  local f = io.open(theme_file, 'w')
  if f then
    f:write(theme_name)
    f:close()
  end
end

local function load_theme()
  local f = io.open(theme_file, 'r')
  if f then
    local theme = f:read('*l')
    f:close()
    return theme
  end
  return nil
end

local function set_theme_by_name(theme_name)
  for i, theme in ipairs(themes) do
    if theme == theme_name then
      current_theme_index = i
      vim.cmd('colorscheme ' .. theme_name)
      return true
    end
  end
  return false
end

-- Load theme on startup
local loaded_theme = load_theme()
if loaded_theme then
  set_theme_by_name(loaded_theme)
end

function M.toggle()
  current_theme_index = current_theme_index % #themes + 1
  local new_theme = themes[current_theme_index]
  vim.cmd('colorscheme ' .. new_theme)
  save_theme(new_theme)
  vim.notify('Theme changed to: ' .. new_theme, vim.log.levels.INFO, {
    title = 'Theme Switcher',
    timeout = 2000,
  })
end

function M.next()
  current_theme_index = current_theme_index % #themes + 1
  local new_theme = themes[current_theme_index]
  vim.cmd('colorscheme ' .. new_theme)
  save_theme(new_theme)
  vim.notify('Theme: ' .. new_theme, vim.log.levels.INFO, {
    title = 'Theme Switcher',
    timeout = 1500,
  })
end

function M.prev()
  current_theme_index = current_theme_index - 1
  if current_theme_index < 1 then
    current_theme_index = #themes
  end
  local new_theme = themes[current_theme_index]
  vim.cmd('colorscheme ' .. new_theme)
  save_theme(new_theme)
  vim.notify('Theme: ' .. new_theme, vim.log.levels.INFO, {
    title = 'Theme Switcher',
    timeout = 1500,
  })
end

function M.set(theme_name)
  for i, theme in ipairs(themes) do
    if theme == theme_name then
      current_theme_index = i
      vim.cmd('colorscheme ' .. theme_name)
      save_theme(theme_name)
      vim.notify('Theme set to: ' .. theme_name, vim.log.levels.INFO, {
        title = 'Theme Switcher',
        timeout = 1500,
      })
      return
    end
  end
  vim.notify('Theme not found: ' .. theme_name, vim.log.levels.WARN, {
    title = 'Theme Switcher',
    timeout = 2000,
  })
end

-- Make the module available globally
_G["theme-switcher"] = M

return M 