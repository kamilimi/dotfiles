
return {
  'mason-org/mason-lspconfig.nvim',

  dependencies = {
    { 'mason-org/mason.nvim', opts = {}},
    { 'neovim/nvim-lspconfig', } },

  config = function()
    local capabilities = require 'cmp_nvim_lsp'.default_capabilities()
    local lspconfig = require 'lspconfig'

    require("mason-lspconfig").setup({
      handlers = {
        function(server_name)
          lspconfig[server_name].setup({ capabilities = capabilities })
        end,
      }
    })
  end
}

