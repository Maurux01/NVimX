-- lua/config/dap-ui.lua
-- Configuración de nvim-dap-ui

require('dapui').setup({
  icons = { expanded = '▾', collapsed = '▸', current_frame = '▸' },
  mappings = {
    expand = { '<CR>', '<2-LeftMouse>' },
    open = 'o',
    remove = 'd',
    edit = 'e',
    repl = 'r',
    toggle = 't',
  },
  element_mappings = {},
  expand_lines = true,
  layouts = {
    {
      elements = {
        { id = 'scopes', size = 0.33 },
        { id = 'breakpoints', size = 0.17 },
        { id = 'stacks', size = 0.25 },
        { id = 'watches', size = 0.25 },
      },
      size = 0.33,
      position = 'right',
    },
    {
      elements = {
        { id = 'repl', size = 0.45 },
        { id = 'console', size = 0.55 },
      },
      size = 0.27,
      position = 'bottom',
    },
  },
  controls = {
    enabled = true,
    element = 'repl',
    icons = {
      pause = '',
      play = '',
      step_into = '',
      step_over = '',
      step_out = '',
      step_back = '',
      run_last = '',
      terminate = '',
    },
  },
  floating = {
    max_height = 0.9,
    max_width = 0.5,
    border = 'single',
    mappings = {
      close = { 'q', '<Esc>' },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil,
    max_value_lines = 100,
  },
}) 