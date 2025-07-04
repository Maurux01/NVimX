-- Theme switching keymaps with persistence
-- These keymaps allow you to quickly switch between dark themes and save your choice

local theme_persistence = require("config.theme-persistence")

local themes = {
  "tokyonight",
  "catppuccin", 
  "gruvbox",
  "dracula",
  "onedark",
}

local current_theme_index = 1

-- Function to cycle through themes
local function cycle_theme()
  current_theme_index = current_theme_index + 1
  if current_theme_index > #themes then
    current_theme_index = 1
  end
  
  local theme_name = themes[current_theme_index]
  vim.cmd.colorscheme(theme_name)
  theme_persistence.save_theme(theme_name) -- Save the theme
  vim.notify("Switched to theme: " .. theme_name .. " (saved)", vim.log.levels.INFO)
end

-- Function to set specific theme
local function set_theme(theme_name)
  if vim.tbl_contains(themes, theme_name) then
    vim.cmd.colorscheme(theme_name)
    current_theme_index = vim.tbl_index(themes, theme_name)
    theme_persistence.save_theme(theme_name) -- Save the theme
    vim.notify("Switched to theme: " .. theme_name .. " (saved)", vim.log.levels.INFO)
  else
    vim.notify("Theme not found: " .. theme_name, vim.log.levels.ERROR)
  end
end

-- Set up keymaps
vim.keymap.set("n", "<leader>tn", cycle_theme, { desc = "Next Theme (saved)" })
vim.keymap.set("n", "<leader>tt", function() set_theme("tokyonight") end, { desc = "Tokyo Night (saved)" })
vim.keymap.set("n", "<leader>tc", function() set_theme("catppuccin") end, { desc = "Catppuccin (saved)" })
vim.keymap.set("n", "<leader>tg", function() set_theme("gruvbox") end, { desc = "Gruvbox (saved)" })
vim.keymap.set("n", "<leader>td", function() set_theme("dracula") end, { desc = "Dracula (saved)" })
vim.keymap.set("n", "<leader>to", function() set_theme("onedark") end, { desc = "One Dark (saved)" })

-- Additional theme management keymaps
vim.keymap.set("n", "<leader>ts", theme_persistence.show_theme_status, { desc = "Show Theme Status" })
vim.keymap.set("n", "<leader>tl", function() 
  local themes_list = theme_persistence.list_themes()
  local message = "Available themes:\n" .. table.concat(themes_list, "\n")
  vim.notify(message, vim.log.levels.INFO, {
    title = "Theme List",
    timeout = 5000,
  })
end, { desc = "List Themes" })

-- Initialize current theme index based on saved theme
local function init_theme_index()
  local saved_theme = theme_persistence.get_current_theme()
  current_theme_index = vim.tbl_index(themes, saved_theme) or 1
end

-- Initialize on startup
init_theme_index() 