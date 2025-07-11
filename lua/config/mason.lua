-- lua/config/mason.lua
-- Configuración básica de mason

require('mason').setup({
  ui = {
    border = 'rounded',
    icons = {
      package_installed = '✓',
      package_pending = '⟳',
      package_uninstalled = '✗',
    },
  },
  max_concurrent_installers = 4,
}) 