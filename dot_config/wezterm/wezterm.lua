wezterm = require("wezterm")
local config = {}
config.default_prog = { "nu", "-l" }
config.font_size = 18
config.color_scheme = "tokyonight_night"
--Remove window in gnome
config.window_decorations = "RESIZE"
--Stop close prompt
config.window_close_confirmation = "NeverPrompt"
--bar
local bar = wezterm.plugin.require("https://github.com/adriankarlen/bar.wezterm")
bar.apply_to_config(config)
bar.apply_to_config(config, {
	enabled_modules = {
		username = false,
		clock = false,
		hostname = false,
	},
})
return config
