-- init.lua
-- Neovim IDE con Packer, nvim-tree, animaciones y tema Gruvbox

-- Bootstrap Packer si no está instalado
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

-- Cargar plugins
require('plugins')

-- Configuración modular (después de que Packer esté listo)
vim.api.nvim_create_autocmd("User", {
  pattern = "PackerComplete",
  callback = function()
    pcall(require, 'config.keymaps')
    pcall(require, 'config.lsp')
    pcall(require, 'config.completion')
    pcall(require, 'config.treesitter')
    pcall(require, 'config.theme')
    pcall(require, 'config.statusline')
    pcall(require, 'config.git')
    pcall(require, 'config.terminal')
    pcall(require, 'config.noice')
    pcall(require, 'config.nvimtree')
    pcall(require, 'config.rainbow')
    pcall(require, 'config.colorizer')
    pcall(require, 'config.pairs')
    pcall(require, 'config.telescope')
    pcall(require, 'config.theme-fallback')
  end,
})

-- Opciones básicas
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.termguicolors = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.updatetime = 50
vim.opt.timeoutlen = 300
vim.opt.signcolumn = 'yes'
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true 