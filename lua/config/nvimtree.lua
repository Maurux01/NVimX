-- lua/config/nvimtree.lua
-- Configuración de nvim-tree

require('nvim-tree').setup {
  view = {
    width = 35,
    side = 'left',
    number = false,
    relativenumber = false,
  },
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
      },
    },
    highlight_git = true,
    highlight_opened_files = 'all',
  },
  filters = {
    dotfiles = false,
    custom = { '.git', 'node_modules', '.cache' },
  },
  git = {
    enable = true,
    ignore = false,
  },
  actions = {
    open_file = {
      quit_on_open = false,
    },
  },
} 