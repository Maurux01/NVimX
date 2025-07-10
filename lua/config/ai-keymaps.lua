-- AI Assistant Keymaps
-- These keymaps provide easy access to AI features

-- Avante.nvim keymaps
vim.keymap.set("n", "<leader>aa", ":AvantePanel<CR>", { desc = "Avante Panel" })
vim.keymap.set("i", "<C-a>", function()
  if pcall(require, "avante") then
    require("avante").accept_suggestion()
  end
end, { desc = "Avante Accept Suggestion" })

vim.keymap.set("n", "<leader>ai", function()
  local help_text = [[
🤖 Avante.nvim Keymaps:

Normal Mode:
  <leader>aa - Abrir panel de Avante
Insert Mode:
  <C-a> - Aceptar sugerencia de Avante
  <leader>ai - Mostrar esta ayuda
  ]]
  vim.notify(help_text, vim.log.levels.INFO, {
    title = "Avante Keymaps",
    timeout = 10000,
  })
end, { desc = "Show Avante Keymaps Help" })

local function tbl_index(tbl, value)
  for i, v in ipairs(tbl) do
    if v == value then
      return i
    end
  end
  return nil
end