-- lua/config/telescope.lua
-- Configuración de Telescope para búsqueda avanzada

local telescope = require('telescope')
local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

-- Configuración principal de Telescope
telescope.setup({
  defaults = {
    -- Configuración de ventana
    layout_strategy = 'horizontal',
    layout_config = {
      horizontal = {
        width = 0.9,
        height = 0.8,
        preview_width = 0.6,
      },
      vertical = {
        width = 0.8,
        height = 0.9,
        preview_height = 0.6,
      },
    },
    
    -- Configuración de mapeo
    mappings = {
      i = {
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
        ['<C-n>'] = actions.cycle_history_next,
        ['<C-p>'] = actions.cycle_history_prev,
        ['<C-c>'] = actions.close,
        ['<C-u>'] = actions.preview_scrolling_up,
        ['<C-d>'] = actions.preview_scrolling_down,
        ['<C-q>'] = actions.send_to_qflist + actions.open_qflist,
        ['<C-l>'] = actions.complete_tag,
        ['<C-_>'] = actions.which_key, -- keys from pressing <C-/>
      },
      n = {
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
        ['<C-q>'] = actions.send_to_qflist + actions.open_qflist,
        ['<C-l>'] = actions.complete_tag,
        ['<C-_>'] = actions.which_key, -- keys from pressing <C-/>
      },
    },
    
    -- Configuración de archivos
    file_ignore_patterns = {
      'node_modules',
      '.git',
      '.cache',
      'dist',
      'build',
      '*.pyc',
      '__pycache__',
      '.DS_Store',
    },
    
    -- Configuración de preview
    preview = {
      treesitter = true,
      hide_on_startup = false,
    },
    
    -- Configuración de prompt
    prompt_prefix = ' 🔍 ',
    selection_caret = ' ❯ ',
    entry_prefix = '  ',
    
    -- Configuración de colores
    color_devicons = true,
    
    -- Configuración de sorting
    sorting_strategy = 'ascending',
    selection_strategy = 'reset',
  },
  
  -- Configuración específica para find_files
  pickers = {
    find_files = {
      hidden = true,
      no_ignore = false,
      follow = true,
    },
    live_grep = {
      additional_args = function()
        return {'--hidden', '--no-ignore'}
      end,
    },
    grep_string = {
      additional_args = function()
        return {'--hidden', '--no-ignore'}
      end,
    },
    buffers = {
      sort_lastused = true,
      sort_mru = true,
    },
    git_files = {
      git_ignore_files = true,
    },
  },
  
  -- Extensiones
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = 'smart_case',
    },
    file_browser = {
      theme = 'dropdown',
      hijack_netrw = true,
      mappings = {
        ['i'] = {
          ['<C-w>'] = function() vim.cmd('normal vbd') end,
        },
        ['n'] = {
          ['N'] = require('telescope').extensions.file_browser.actions.create,
          ['h'] = require('telescope').extensions.file_browser.actions.goto_parent_dir,
          ['/'] = function()
            vim.cmd('startinsert')
          end,
        },
      },
    },
    ['ui-select'] = {
      require('telescope.themes').get_dropdown(),
    },
  },
})

-- Cargar extensiones
telescope.load_extension('fzf')
telescope.load_extension('file_browser')
telescope.load_extension('ui-select')

-- Funciones personalizadas para Telescope
local M = {}

-- Búsqueda de archivos con preview
function M.find_files_with_preview()
  builtin.find_files({
    find_command = {'rg', '--files', '--hidden', '--no-ignore'},
    previewer = true,
  })
end

-- Búsqueda de texto en archivos específicos
function M.grep_in_files()
  builtin.live_grep({
    additional_args = function()
      return {'--hidden', '--no-ignore', '--type-add', 'all:*', '--type', 'all'}
    end,
  })
end

-- Búsqueda de símbolos en el workspace
function M.workspace_symbols()
  builtin.lsp_workspace_symbols({
    symbols = {'function', 'method', 'class', 'interface', 'variable', 'constant'},
  })
end

-- Búsqueda de símbolos en el documento actual
function M.document_symbols()
  builtin.lsp_document_symbols({
    symbols = {'function', 'method', 'class', 'interface', 'variable', 'constant'},
  })
end

-- Búsqueda de referencias
function M.references()
  builtin.lsp_references()
end

-- Búsqueda de definiciones
function M.definitions()
  builtin.lsp_definitions()
end

-- Búsqueda de implementaciones
function M.implementations()
  builtin.lsp_implementations()
end

-- Búsqueda de type definitions
function M.type_definitions()
  builtin.lsp_type_definitions()
end

-- Búsqueda de diagnósticos
function M.diagnostics()
  builtin.diagnostics()
end

-- Búsqueda de comandos
function M.commands()
  builtin.commands()
end

-- Búsqueda de keymaps
function M.keymaps()
  builtin.keymaps()
end

-- Búsqueda de help tags
function M.help_tags()
  builtin.help_tags()
end

-- Búsqueda de man pages
function M.man_pages()
  builtin.man_pages()
end

-- Búsqueda de marks
function M.marks()
  builtin.marks()
end

-- Búsqueda de registers
function M.registers()
  builtin.registers()
end

-- Búsqueda de spell suggestions
function M.spell_suggest()
  builtin.spell_suggest()
end

-- Búsqueda de colorschemes
function M.colorscheme()
  builtin.colorscheme()
end

-- Búsqueda de file browser
function M.file_browser()
  require('telescope').extensions.file_browser.file_browser({
    path = '%:p:h',
    cwd = vim.fn.expand('%:p:h'),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = 'normal',
    layout_config = { height = 40 },
  })
end

return M 