return { {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    opts = {
      ensure_installed = { 'lua' },
      auto_install = true,
      highlight = { enable = true }
    },
  }, {
    'Djancyp/better-comments.nvim',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
    },
    config = function () require 'better-comment'.Setup() end
  }
}

