-- lua/config/mason-lspconfig.lua
-- Configuración básica de mason-lspconfig

require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls',
    'pyright',
    'gopls',
    'rust_analyzer',
    'jsonls',
    'yamlls',
    'html',
    'cssls',
    'eslint',
  },
  automatic_installation = true,
}) 