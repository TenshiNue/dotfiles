return {
  'goolord/alpha-nvim',
  enabled = true,
  config = function()
    -- TODO complete config
    local dashboard = require 'alpha.themes.dashboard'
    require('alpha').setup(dashboard.opts)
  end,
}
