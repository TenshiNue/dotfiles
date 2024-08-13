return {
  "goolord/alpha-nvim",
  enabled = true,
  config = function()
    local dashboard = require("alpha.themes.dashboard")
    --TODO configure starter page
    require("alpha").setup(dashboard.opts)
  end,
}
