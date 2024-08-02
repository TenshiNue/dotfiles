wezterm = require("wezterm")
local config = {}
config.default_prog = { "fish", "-l" }
config.font_size = 18
config.color_scheme = "Kanagawa Dragon (Gogh)"
--Remove window in gnome
config.window_decorations = "RESIZE"
--Stop close prompt
config.window_close_confirmation = "NeverPrompt"
--bar
config.enable_tab_bar = true
config.hide_tab_bar_if_only_one_tab = false
config.show_new_tab_button_in_tab_bar = true
config.show_tab_index_in_tab_bar = false
config.show_tabs_in_tab_bar = true
config.switch_to_last_active_tab_when_closing_tab = false
config.tab_and_split_indices_are_zero_based = false
config.tab_bar_at_bottom = true
config.tab_max_width = 25
config.use_fancy_tab_bar = false




return config
