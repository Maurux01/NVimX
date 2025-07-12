-- lua/plugins/cmp.lua
-- Configuración mejorada de autocompletado con nvim-cmp

return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-emoji",
      "saadparwaiz1/cmp_luasnip",
      "L3MON4D3/LuaSnip",
      "rafamadriz/friendly-snippets",
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      -- Load friendly-snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      opts.sources = cmp.config.sources({
        { name = "nvim_lsp", priority = 1000 },
        { name = "luasnip", priority = 750 },
        { name = "buffer", priority = 500 },
        { name = "path", priority = 250 },
        { name = "emoji", priority = 200 },
      })

      opts.mapping = cmp.mapping.preset.insert({
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"] = cmp.mapping.abort(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          else
            fallback()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          else
            fallback()
          end
        end, { "i", "s" }),
        -- Restaurar flechas ↑ y ↓ para navegación normal
        ["<Up>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
        ["<Down>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
      })

      opts.snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      }

      opts.window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      }

      opts.experimental = {
        ghost_text = true,
      }

      return opts
    end,
  },
  {
    "L3MON4D3/LuaSnip",
    config = function()
      require("luasnip").setup({
        history = true,
        delete_check_events = "TextChanged,InsertLeave",
        region_check_events = "CursorMoved,CursorHold,InsertEnter",
        enable_autosnippets = true,
        store_selection_keys = "<Tab>",
      })
    end,
  },
} 