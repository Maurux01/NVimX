-- lua/config/terminal.lua
-- Configuración de terminal con toggleterm

require('toggleterm').setup({
  size = 15,
  open_mapping = [[<c-\>]],
  hide_numbers = true,
  shade_filetypes = {},
  shade_terminals = true,
  shading_factor = 2,
  start_in_insert = true,
  insert_mappings = true,
  persist_size = true,
  direction = 'horizontal', -- Cambiado a horizontal para inicio
  close_on_exit = true,
  shell = vim.o.shell,
  float_opts = {
    border = 'curved',
    winblend = 0,
    highlights = {
      border = 'Normal',
      background = 'Normal',
    },
  },
})

-- Keybinds para terminal
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], { desc = 'Salir del terminal' })
vim.keymap.set('t', 'jj', [[<C-\><C-n>]], { desc = 'Salir del terminal' })
vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], { desc = 'Ir a ventana izquierda' })
vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], { desc = 'Ir a ventana abajo' })
vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], { desc = 'Ir a ventana arriba' })
vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], { desc = 'Ir a ventana derecha' })

-- Abrir terminal automáticamente al iniciar Neovim
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.cmd("ToggleTerm")
  end,
}) 