-- Theme switching keymaps
-- These keymaps allow you to quickly switch between dark themes

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
  vim.notify("Switched to theme: " .. theme_name, vim.log.levels.INFO)
end

-- Function to set specific theme
local function set_theme(theme_name)
  if vim.tbl_contains(themes, theme_name) then
    vim.cmd.colorscheme(theme_name)
    current_theme_index = vim.tbl_index(themes, theme_name)
    vim.notify("Switched to theme: " .. theme_name, vim.log.levels.INFO)
  else
    vim.notify("Theme not found: " .. theme_name, vim.log.levels.ERROR)
  end
end

-- Set up keymaps
vim.keymap.set("n", "<leader>tn", cycle_theme, { desc = "Next Theme" })
vim.keymap.set("n", "<leader>tt", function() set_theme("tokyonight") end, { desc = "Tokyo Night" })
vim.keymap.set("n", "<leader>tc", function() set_theme("catppuccin") end, { desc = "Catppuccin" })
vim.keymap.set("n", "<leader>tg", function() set_theme("gruvbox") end, { desc = "Gruvbox" })
vim.keymap.set("n", "<leader>td", function() set_theme("dracula") end, { desc = "Dracula" })
vim.keymap.set("n", "<leader>to", function() set_theme("onedark") end, { desc = "One Dark" })

-- Set default theme on startup
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd.colorscheme("tokyonight")
  end,
}) 