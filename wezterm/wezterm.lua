-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

wezterm.on("gui-startup", function(cmd)
	local active = wezterm.gui.screens().active
	local tab, pane, window = wezterm.mux.spawn_window(cmd or {})
	window:guiwindow():setposition(active.x, active.y)
	window:guiwindow():set_innersize(active.width, active.height)
end)

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	default_cursor_style = "BlinkingBar",
	window_close_confirmation = "NeverPrompt",
	adjust_window_size_when_changing_font_size = false,
	native_macos_fullscreen_mode = true,

	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},
	color_scheme = "Gruvbox Dark (Gogh)",

	font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	font_size = 16,

	window_background_opacity = 1,
	macos_window_background_blur = 100,
	window_decorations = "RESIZE",

	send_composed_key_when_left_alt_is_pressed = true,
	send_composed_key_when_right_alt_is_pressed = true,

	leader = { key = "s", mods = "CTRL", timeout_milliseconds = 2000 },
}
return config
