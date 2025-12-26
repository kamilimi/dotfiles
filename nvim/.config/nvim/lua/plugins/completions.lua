return {
  'hrsh7th/nvim-cmp',

  dependencies = {
    'hrsh7th/cmp-nvim-lsp', -- config is in /lua/plugins/lsp
    { 'L3MON4D3/LuaSnip', dependencies = { 'rafamadriz/friendly-snippets' }, },
    'saadparwaiz1/cmp_luasnip',
  },

  config = function()
    local cmp = require 'cmp'
    require 'luasnip.loaders.from_vscode'.lazy_load()

    cmp.setup({

      snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end
      },

      sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
      }),

      window = {
        completion = {
          max_height = 15,
        },
        documentation = {
          max_height = 15,
        },
      },

    })
  end,
}
