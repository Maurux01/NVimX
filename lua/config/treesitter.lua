-- lua/config/treesitter.lua
-- Configuración moderna de Treesitter

require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'lua',
    'vim',
    'vimdoc',
    'javascript',
    'typescript',
    'python',
    'go',
    'rust',
    'c',
    'cpp',
    'json',
    'yaml',
    'html',
    'css',
    'scss',
    'markdown',
    'bash',
    'dockerfile',
    'gitignore',
    'gitcommit',
    'git_rebase',
    'diff',
    'comment',
    'regex',
    'query',
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = '<CR>',
      node_incremental = '<CR>',
      node_decremental = '<BS>',
      scope_incremental = '<TAB>',
    },
  },
  textobjects = {
    enable = true,
    lookahead = true,
    keymaps = {
      ['aa'] = '@parameter.outer',
      ['ia'] = '@parameter.inner',
      ['af'] = '@function.outer',
      ['if'] = '@function.inner',
      ['ac'] = '@class.outer',
      ['ic'] = '@class.inner',
    },
  },
  move = {
    enable = true,
    set_jumps = true,
    goto_next_start = {
      [']m'] = '@function.outer',
      [']]'] = '@class.outer',
    },
    goto_next_end = {
      [']M'] = '@function.outer',
      [']['] = '@class.outer',
    },
    goto_previous_start = {
      ['[m'] = '@function.outer',
      ['[['] = '@class.outer',
    },
    goto_previous_end = {
      ['[M'] = '@function.outer',
      ['[]'] = '@class.outer',
    },
  },
  swap = {
    enable = true,
    swap_next = {
      ['<leader>a'] = '@parameter.inner',
    },
    swap_previous = {
      ['<leader>A'] = '@parameter.inner',
    },
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
})

-- Treesitter context (opcional)
local success, treesitter_context = pcall(require, 'treesitter-context')
if success then
  treesitter_context.setup({
    enable = true,
    max_lines = 0,
    trim_scope = 'outer',
    patterns = {
      default = {
        'class',
        'function',
        'method',
        'for',
        'while',
        'if',
        'switch',
        'case',
      },
      rust = {
        'impl_item',
        'struct',
        'enum',
        'function',
        'mod',
      },
      go = {
        'function',
        'method',
        'if',
        'for',
        'switch',
        'select',
        'type',
        'struct',
        'interface',
      },
      python = {
        'class',
        'function',
        'if',
        'for',
        'while',
        'try',
        'except',
        'with',
      },
      javascript = {
        'class',
        'function',
        'method',
        'for',
        'while',
        'if',
        'switch',
        'try',
        'catch',
      },
      typescript = {
        'class',
        'function',
        'method',
        'for',
        'while',
        'if',
        'switch',
        'try',
        'catch',
        'interface',
        'type',
      },
    },
  })
end 