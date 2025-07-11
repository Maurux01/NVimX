-- lua/config/neotest.lua
-- Configuración básica de neotest

require('neotest').setup({
  adapters = {
    require('neotest-python'),
    require('neotest-vim-test'),
  },
  status = { virtual_text = true },
  output = { open_on_run = true },
  quickfix = {
    open = function()
      if require('lazyvim.util').has('trouble.nvim') then
        vim.cmd('Trouble quickfix')
      else
        vim.cmd('copen')
      end
    end,
  },
}) 