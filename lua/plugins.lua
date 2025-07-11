-- lua/plugins.lua
-- Plugins para Neovim IDE con Packer

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Packer
  use 'wbthomason/packer.nvim'

  -- Temas oscuros modernos
  use {
    'ellisonleao/gruvbox.nvim',
    config = function()
      vim.cmd('colorscheme gruvbox')
    end
  }
  use {
    'folke/tokyonight.nvim',
    config = function()
      require('config.theme-tokyonight')
    end
  }
  use {
    'catppuccin/nvim',
    config = function()
      require('config.theme-catppuccin')
    end
  }
  use {
    'navarasu/onedark.nvim',
    config = function()
      require('config.theme-onedark')
    end
  }
  use {
    'Mofiqul/dracula.nvim',
    config = function()
      require('config.theme-dracula')
    end
  }
  -- Kanagawa removido temporalmente por problemas de compatibilidad
  -- use {
  --   'rebelot/kanagawa.nvim',
  --   config = function()
  --     require('config.theme-kanagawa')
  --   end
  -- }
  -- Rose Pine removido
  -- use {
  --   'rose-pine/neovim',
  --   config = function()
  --     require('config.theme-rose-pine')
  --   end
  -- }

  -- Tema alternativo moderno (reemplaza Kanagawa)
  use {
    'EdenEast/nightfox.nvim',
    config = function()
      require('nightfox').setup({
        options = {
          transparent = false,
          terminal_colors = true,
          dim_inactive = false,
          styles = {
            comments = "italic",
            keywords = "bold",
            types = "italic,bold",
          },
        },
      })
    end
  }

  -- Iconos
  use 'nvim-tree/nvim-web-devicons'

  -- Animaciones
  use {
    'echasnovski/mini.animate',
    config = function()
      require('mini.animate').setup()
    end
  }
  
  -- Autocompletado de brackets y pares
  use {
    'echasnovski/mini.pairs',
    event = 'InsertEnter',
    config = function()
      require('config.pairs')
    end
  }

  -- Notificaciones y UI
  use {
    'folke/noice.nvim',
    requires = { 'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify' },
    config = function()
      require('config.noice')
    end
  }
  use {
    'rcarriga/nvim-notify',
    config = function()
      require('config.notify')
    end
  }
  use 'stevearc/dressing.nvim'

  -- Explorador de archivos
  use {
    'nvim-tree/nvim-tree.lua',
    config = function()
      require('config.nvimtree')
    end
  }

  -- Telescope (búsqueda de archivos y texto)
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-fzf-native.nvim',
      'nvim-telescope/telescope-file-browser.nvim',
      'nvim-telescope/telescope-ui-select.nvim',
    },
    config = function()
      require('config.telescope')
    end
  }

  -- Mejorar búsqueda
  use {
    'folke/flash.nvim',
    event = 'VeryLazy',
    opts = {},
    keys = {
      {
        's',
        mode = { 'n', 'x', 'o' },
        function()
          require('flash').jump()
        end,
        desc = 'Flash',
      },
      {
        'S',
        mode = { 'n', 'x', 'o' },
        function()
          require('flash').treesitter()
        end,
        desc = 'Flash Treesitter',
      },
      {
        'r',
        mode = 'o',
        function()
          require('flash').remote()
        end,
        desc = 'Remote Flash',
      },
      {
        'R',
        mode = { 'o', 'x' },
        function()
          require('flash').treesitter_search()
        end,
        desc = 'Treesitter Search',
      },
      {
        '<c-s>',
        mode = { 'c' },
        function()
          require('flash').toggle()
        end,
        desc = 'Toggle Flash Search',
      },
    },
  }

  -- Selección inteligente
  use {
    'nvim-treesitter/nvim-treesitter-textobjects',
    after = 'nvim-treesitter',
    config = function()
      require('nvim-treesitter.configs').setup({
        textobjects = {
          select = {
            enable = true,
            lookahead = true,
            keymaps = {
              ['af'] = '@function.outer',
              ['if'] = '@function.inner',
              ['ac'] = '@class.outer',
              ['ic'] = '@class.inner',
              ['al'] = '@loop.outer',
              ['il'] = '@loop.inner',
              ['ab'] = '@block.outer',
              ['ib'] = '@block.inner',
              ['ap'] = '@parameter.outer',
              ['ip'] = '@parameter.inner',
              ['am'] = '@call.outer',
              ['im'] = '@call.inner',
              ['as'] = '@statement.outer',
              ['is'] = '@statement.inner',
            },
          },
          move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
              [']m'] = '@function.outer',
              [']]'] = '@class.outer',
              [']c'] = '@class.outer',
              [']l'] = '@loop.outer',
              [']b'] = '@block.outer',
              [']p'] = '@parameter.outer',
              [']s'] = '@statement.outer',
            },
            goto_next_end = {
              [']M'] = '@function.outer',
              [']['] = '@class.outer',
              [']C'] = '@class.outer',
              [']L'] = '@loop.outer',
              [']B'] = '@block.outer',
              [']P'] = '@parameter.outer',
              [']S'] = '@statement.outer',
            },
            goto_previous_start = {
              ['[m'] = '@function.outer',
              ['[['] = '@class.outer',
              ['[c'] = '@class.outer',
              ['[l'] = '@loop.outer',
              ['[b'] = '@block.outer',
              ['[p'] = '@parameter.outer',
              ['[s'] = '@statement.outer',
            },
            goto_previous_end = {
              ['[M'] = '@function.outer',
              ['[]'] = '@class.outer',
              ['[C'] = '@class.outer',
              ['[L'] = '@loop.outer',
              ['[B'] = '@block.outer',
              ['[P'] = '@parameter.outer',
              ['[S'] = '@statement.outer',
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
        },
      })
    end,
  }

  -- Statusline
  use {
    'nvim-lualine/lualine.nvim',
    config = function()
      require('config.statusline')
    end
  }

  -- LSP
  use {
    'neovim/nvim-lspconfig',
    config = function()
      require('config.lsp')
    end
  }
  use {
    'williamboman/mason.nvim',
    config = function()
      require('config.mason')
    end
  }
  use {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('config.mason-lspconfig')
    end
  }
  use {
    'b0o/schemastore.nvim',
    opt = true
  }

  -- Autocompletado
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'saadparwaiz1/cmp_luasnip',
      'onsails/lspkind-nvim',
    },
    config = function()
      require('config.completion')
    end
  }

  -- Snippets
  use {
    'L3MON4D3/LuaSnip',
    config = function()
      require('config.luasnip')
    end
  }
  use 'rafamadriz/friendly-snippets'

  -- Comentarios inteligentes
  use {
    'numToStr/Comment.nvim',
    config = function()
      require('Comment').setup({
        padding = true,
        sticky = true,
        ignore = nil,
        toggler = {
          line = '<leader>cc',
          block = '<leader>cb',
        },
        opleader = {
          line = '<leader>c',
          block = '<leader>b',
        },
        extra = {
          above = '<leader>cO',
          below = '<leader>co',
          eol = '<leader>cA',
        },
        mappings = {
          basic = true,
          extra = true,
        },
        pre_hook = nil,
        post_hook = nil,
      })
    end
  }

  -- Indentación visual
  use {
    'lukas-reineke/indent-blankline.nvim',
    config = function()
      require('indent_blankline').setup({
        char = '│',
        show_trailing_blankline_indent = false,
        show_first_indent_level = true,
        use_treesitter = true,
        show_current_context = true,
        show_current_context_start = true,
        context_patterns = {
          'class',
          'return',
          'function',
          'method',
          '^if',
          '^while',
          'jsx_element',
          '^for',
          '^object',
          '^table',
          'block',
          'arguments',
          'if_statement',
          'else_clause',
          'jsx_element',
          'jsx_self_closing_element',
          'try_statement',
          'catch_clause',
          'import_statement',
          'operation_type',
        },
      })
    end
  }

  -- Mejorar la UI
  use {
    'stevearc/aerial.nvim',
    config = function()
      require('aerial').setup({
        layout = {
          default_direction = 'prefer_right',
          placement = 'edge',
          max_width = { 40, 0.2 },
          width = nil,
          min_width = 10,
        },
        highlight_mode = 'split_width',
        highlight_closest = true,
        highlight_on_hover = false,
        highlight_on_jump = 300,
        show_guides = true,
        guides = {
          mid_item = '├─',
          last_item = '└─',
          nested_toplevel = '│ ',
          whitespace = '  ',
        },
        keymaps = {
          ['<CR>'] = 'actions.jump',
          ['<2-LeftMouse>'] = 'actions.jump',
          ['<C-v>'] = 'actions.jump_vsplit',
          ['<C-s>'] = 'actions.jump_split',
          ['p'] = 'actions.scroll',
          ['<C-j>'] = 'actions.down_and_scroll',
          ['<C-k>'] = 'actions.up_and_scroll',
          ['{'] = 'actions.prev',
          ['}'] = 'actions.next',
          ['[['] = 'actions.prev_up',
          [']]'] = 'actions.next_up',
          ['q'] = 'actions.close',
          ['o'] = 'actions.toggle_tree',
          ['za'] = 'actions.toggle_tree',
          ['O'] = 'actions.toggle_tree_recursive',
          ['zR'] = 'actions.open_recursive',
          ['zM'] = 'actions.close_recursive',
          ['zr'] = 'actions.open',
          ['zm'] = 'actions.close',
          ['zc'] = 'actions.close',
          ['zo'] = 'actions.open',
          ['zO'] = 'actions.open_recursive',
          ['zC'] = 'actions.close_recursive',
        },
      })
    end
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
    config = function()
      require('config.treesitter')
    end
  }
  use {
    'nvim-treesitter/nvim-treesitter-context',
    after = 'nvim-treesitter',
  }
  -- Rainbow brackets
  use {
    'HiPhish/rainbow-delimiters.nvim',
    config = function()
      require('config.rainbow')
    end,
    after = 'nvim-treesitter',
  }
  -- Colorizer para palabras y símbolos
  use {
    'NvChad/nvim-colorizer.lua',
    config = function()
      require('config.colorizer')
    end,
    event = 'BufReadPre',
  }

  -- Git
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('config.gitsigns')
    end
  }
  use 'tpope/vim-fugitive'

  -- Terminal
  use {
    'akinsho/toggleterm.nvim',
    config = function()
      require('config.terminal')
    end
  }

  -- Keybinds
  use {
    'folke/which-key.nvim',
    config = function()
      require('config.which-key')
    end
  }

  -- Debugging
  use {
    'mfussenegger/nvim-dap',
    config = function()
      require('config.dap')
    end
  }
  use {
    'rcarriga/nvim-dap-ui',
    requires = { 'mfussenegger/nvim-dap', 'nvim-neotest/nvim-nio' },
    config = function()
      require('config.dap-ui')
    end
  }

  -- Diagnósticos y errores en línea
  use {
    'folke/trouble.nvim',
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('config.trouble')
    end
  }

  use {
    'folke/lsp-colors.nvim',
    config = function()
      require('lsp-colors').setup({
        Error = '#db4b4b',
        Warning = '#e0af68',
        Information = '#0db9d7',
        Hint = '#10b981',
      })
    end
  }

  use {
    'ray-x/lsp_signature.nvim',
    config = function()
      require('lsp_signature').setup({
        bind = true,
        handler_opts = {
          border = 'rounded',
        },
        hint_enable = true,
        hint_prefix = '🐼 ',
        hint_scheme = 'String',
        hi_parameter = 'Search',
        max_height = 12,
        max_width = 120,
        padding = ' ',
        shadow_blend = 36,
        shadow_guibg = 'Black',
        toggle_key = '<C-k>',
        toggle_key_flip_floatwin_setting = true,
        transparency = nil,
        timer_interval = 200,
        timer_threshold = 3,
        toggle_key_flip_floatwin_setting = true,
        select_signature_key = '<M-n>',
        move_cursor_key = '<M-m>',
      })
    end
  }

  -- Mostrar errores en tiempo real
  use {
    'folke/noice.nvim',
    requires = { 'MunifTanjim/nui.nvim', 'rcarriga/nvim-notify' },
    config = function()
      require('config.noice')
    end
  }

  -- Testing
  use {
    'nvim-neotest/neotest',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'antoinemadec/FixCursorHold.nvim',
    },
    config = function()
      require('config.neotest')
    end
  }
  use 'nvim-neotest/neotest-vim-test'
  use 'nvim-neotest/neotest-python'

  -- Utilidades
  use 'nathom/filetype.nvim'
  use 'dstein64/vim-startuptime'

  -- Mejorar manejo de buffers
  use {
    'akinsho/bufferline.nvim',
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup({
        options = {
          mode = 'buffers',
          separator_style = 'slant',
          always_show_bufferline = true,
          show_buffer_close_icons = true,
          show_close_icon = true,
          color_icons = true,
          diagnostics = 'nvim_lsp',
          diagnostics_indicator = function(_, _, diag)
            local icons = require('nvim-web-devicons')
            local ret = (diag.error and icons.get_icon('DiagnosticError', nil, nil, { default = 'E' }) .. diag.error .. ' ' or '')
              .. (diag.warning and icons.get_icon('DiagnosticWarn', nil, nil, { default = 'W' }) .. diag.warning or '')
            return vim.trim(ret)
          end,
          offsets = {
            {
              filetype = 'NvimTree',
              text = 'File Explorer',
              text_align = 'center',
              separator = true,
            },
          },
        },
      })
    end,
  }

  -- Mejoras de UI
  use {
    'folke/twilight.nvim',
    config = function()
      require('twilight').setup({
        dimming = {
          alpha = 0.25,
          inactive = true,
        },
        context = 10,
        treesitter = true,
        expand = {
          'function',
          'method',
          'table',
          'if_statement',
        },
        exclude = {},
      })
    end
  }

  use {
    'folke/zen-mode.nvim',
    config = function()
      require('zen-mode').setup({
        window = {
          backdrop = 0.95,
          height = 0.9,
          width = 0.8,
          options = {
            signcolumn = 'no',
            number = false,
            relativenumber = false,
            cursorline = false,
            cursorcolumn = false,
            foldcolumn = '0',
            list = false,
          },
        },
        plugins = {
          options = {
            enabled = true,
            ruler = false,
            showcmd = false,
          },
          twilight = { enabled = true },
          gitsigns = { enabled = false },
          tmux = { enabled = false },
          alacritty = {
            enabled = false,
            font = '+12',
          },
        },
        on_open = function(win)
        end,
        on_close = function()
        end,
      })
    end
  }

  -- Otros lenguajes
  use { 'fatih/vim-go', ft = 'go' }
  use { 'rust-lang/rust.vim', ft = 'rust' }
  use { 'elixir-editors/vim-elixir', ft = 'elixir' }
  use { 'dart-lang/dart-vim-plugin', ft = 'dart' }
  use { 'jparise/vim-graphql', ft = 'graphql' }

  -- Markdown
  use { 'iamcco/markdown-preview.nvim', run = function() vim.fn['mkdp#util#install']() end, ft = 'markdown' }
  use { 'mzlogin/vim-markdown-toc', ft = 'markdown' }
  use { 'dkarter/bullets.vim', ft = 'markdown' }

  -- Bootstrap automático
  if packer_bootstrap then
    require('packer').sync()
  end
end) 