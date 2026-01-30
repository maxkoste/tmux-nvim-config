-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

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
	color_schemes = {
		["gruvbox_material_dark_hard"] = {
			foreground = "#D4BE98",
			background = "#1D2021",
			cursor_bg = "#D4BE98",
			cursor_border = "#D4BE98",
			cursor_fg = "#1D2021",
			selection_bg = "#D4BE98",
			selection_fg = "#3C3836",

			ansi = { "#1d2021", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#d4be98" },
			brights = { "#eddeb5", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#d4be98" },
		},

		["gruvbox_material_dark_medium"] = {
			foreground = "#D4BE98",
			background = "#282828",
			cursor_bg = "#D4BE98",
			cursor_border = "#D4BE98",
			cursor_fg = "#282828",
			selection_bg = "#D4BE98",
			selection_fg = "#45403d",

			ansi = { "#282828", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#d4be98" },
			brights = { "#eddeb5", "#ea6962", "#a9b665", "#d8a657", "#7daea3", "#d3869b", "#89b482", "#d4be98" },
		},
	},

	-- color_scheme = "Guezwhoz",
	color_scheme = "Dawn (terminal.sexy)",
	-- color_scheme = "Gruvbox dark, hard (base16)",

	-- font = wezterm.font("JetBrains Mono", { weight = "Bold" }),
	font_size = 16,

	-- window_background_opacity = 0.95,
	-- macos_window_background_blur = 60,
	window_decorations = "RESIZE",
	send_composed_key_when_left_alt_is_pressed = true,
	send_composed_key_when_right_alt_is_pressed = true,

	leader = { key = "s", mods = "CTRL", timeout_milliseconds = 2000 },
}

return config
