return {
  -- GitHub Copilot
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        panel = {
          enabled = true,
          auto_refresh = true,
          keymap = {
            jump_prev = "[[",
            jump_next = "]]",
            accept = "<CR>",
            refresh = "gr",
            open = "<M-CR>",
          },
          layout = {
            position = "bottom",
            ratio = 0.4,
          },
        },
        suggestion = {
          enabled = true,
          auto_trigger = true,
          debounce = 75,
          keymap = {
            accept = "<Tab>",
            accept_word = false,
            accept_line = false,
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
        filetypes = {
          markdown = true,
          help = true,
        },
        copilot_node_command = "node",
        server_opts_overrides = {},
      })
    end,
  },

  -- Copilot Chat
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    opts = {
      show_help = "yes",
      debug = false,
      disable_extra_info = "no",
      language = "English",
      model = "gpt-4",
      temperature = 0.1,
    },
    build = function()
      vim.notify("Please install 'cmake', 'ninja-build' and 'pkg-config' for CopilotChat.nvim")
    end,
    event = "VeryLazy",
    keys = {
      { "<leader>cc", "<cmd>CopilotChatToggle<cr>", desc = "Toggle Copilot Chat" },
      { "<leader>ce", "<cmd>CopilotChatExplain<cr>", desc = "Explain code" },
      { "<leader>ct", "<cmd>CopilotChatTests<cr>", desc = "Generate tests" },
      { "<leader>cf", "<cmd>CopilotChatFix<cr>", desc = "Fix code" },
      { "<leader>cr", "<cmd>CopilotChatReview<cr>", desc = "Review code" },
    },
  },
} 