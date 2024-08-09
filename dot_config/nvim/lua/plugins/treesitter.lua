return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    local configs = require 'nvim-treesitter.configs'

    configs.setup {
      ensure_installed = {
        'bash',
        'c',
        'comment',
        'cpp',
        'json',
        'markdown',
        'mermaid',
        'lua',
        'vim',
        'vimdoc',
        'query',
        'javascript',
        'html',
        'css',
        'rust',
        'toml',
        'typescript',
        'zig',
      },
      sync_install = false,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
