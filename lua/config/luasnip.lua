-- lua/config/luasnip.lua
-- Configuración básica de luasnip

local ls = require('luasnip')

-- Configuración básica
ls.config.set_config({
  history = true,
  updateevents = 'TextChanged,TextChangedI',
  enable_autosnippets = true,
  ext_opts = {
    [require('luasnip.util.types').choiceNode] = {
      active = {
        virt_text = { { '●', 'GruvboxOrange' } },
      },
    },
  },
})

-- Cargar snippets de friendly-snippets
require('luasnip.loaders.from_vscode').lazy_load()
require('luasnip.loaders.from_snipmate').lazy_load() 