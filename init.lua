-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require('cmp-config')
require("mason").setup()
require("mason-lspconfig").setup()
