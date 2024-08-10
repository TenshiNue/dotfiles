return {
  'williamboman/mason.nvim',
  dependencies = {
    'neovim/nvim-lspconfig',
    'williamboman/mason-lspconfig.nvim',
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
    'mfussenegger/nvim-lint',
    'WhoIsSethDaniel/mason-tool-installer.nvim',
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup {
      automatic_installation = true,
      ensure_installed = {
        'bashls',
        'lua_ls',
        'jsonls',
      },
    }
    require('mason-tool-installer').setup {
      ensure_installed = {
        'stylua',
        'shfmt',
        'shellharden',
        'prettier',
      },
    }
  end,
}
