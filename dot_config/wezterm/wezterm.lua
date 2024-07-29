wezterm = require("wezterm")
local config = {}

--config.font = wezterm.font("Iosevka NF Medium")
config.font_size = 18
config.color_scheme = "tokyonight_night"

--Remove window in gnome
config.window_decorations = "RESIZE"

return config
