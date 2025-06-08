# 🛠️ Nvim and Tmux Config

This repository contains my personal configuration for **Neovim** and **Tmux** aswell as my config for sketchybar and Spicetify.

## ✨ Features

- 🪟 **Transparent Neovim UI** — integrates cleanly with your terminal or Tmux theme
- 🧵 Tmux setup with battery, online-status, and Catppuccin theme
- 🔌 Plugin-managed with TPM and LazyVim

## Language Support

✅ Pre-configured for:

- Java (with **Maven** and **Gradle**)
- C / C++
- TypeScript
- JavaScript
- Python
- Go

## TMUX / NVIM
<img width="1798" alt="Screenshot 2025-05-24 at 18 09 56" src="https://github.com/user-attachments/assets/67c8a1dd-1d1c-4503-a2ed-1e889e892f3b" />

## SPICETIFY/SKETCHYBAR
<img width="1800" alt="Screenshot 2025-05-26 at 22 35 52" src="https://github.com/user-attachments/assets/58e23f6d-6c5d-4c60-90fe-d9b2d2fa8061" />


## Setup

1. Clone this repo:
   ```bash
   git clone https://github.com/maxkoste/nvim-tmux-config ~/.config
2. Update .tmux.conf
   ```bash
   unbind r
   bind r source-file ~/.tmux.conf

   set -g default-terminal "tmux-256color"
   set -ag terminal-overrides ",xterm-256color:RGB"

   set-option status-position top

   # List of plugins
   set -g @plugin 'tmux-plugins/tpm'
   set -g @plugin 'catppuccin/tmux#v2.1.2'
   set -g @plugin 'tmux-plugins/tmux-online-status'
   set -g @plugin 'tmux-plugins/tmux-battery'

   # Configure the catppuccin plugin
   set -g @catppuccin_flavor "mocha"
   set -g @catppuccin_window_status_style "rounded"
   set -g @catppuccin_window_left_separator ""
   set -g @catppuccin_status_background "basic"	

   # Remap prefix from 'C-b' to 'C-a'
   unbind C-b
   set-option -g prefix C-a
   bind-key C-a send-prefix

   bind s choose-session

   set-option -g status-left ""
   set -g mouse on

   # Splits
   bind . split-window -h  # Horizontal split
   bind - split-window -v  # Vertical split

   # Vim-style pane navigation
   bind h select-pane -L
   bind j select-pane -D
   bind k select-pane -U
   bind l select-pane -R

   # Online/Offline status
   set -g @online_icon "ok"
   set -g @offline_icon "nok"

   # Status line
   set -g status-style ''
   set -g status-right-length 100
   set -g status-left ""
   set -g status-right "#{E:@catppuccin_status_application}"
   set -ag status-right "#{E:@catppuccin_status_session}"
   set -ga status-right "#{?#{e|>=:10,#{battery_percentage}},#{#[bg=#{@thm_red},fg=#{@thm_bg}]},#{#[bg=#{@thm_bg},fg=#{@thm_pink}]}} #{battery_icon} #{battery_percentage} "
   set -ga status-right "#[bg=#{@thm_bg}]#{?#{==:#{online_status},ok},#[fg=#{@thm_mauve}] 󰖩 on ,#[fg=#{@thm_red},bold]#[reverse] 󰖪 off }"

   # Initialize TPM
   run '~/.tmux/plugins/tpm/tpm'

   # Reset window status format
   set -g window-status-format ""
   set -g window-status-current-format ""
## Wezterm config
   ```bash
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
   	native_macos_fullscreen_mode = false,
   
   	window_padding = {
   		left = 0,
   		right = 0,
   		top = 0,
   		bottom = 0,
   	},
   }
   -- config.color_scheme = "Tokyo Night Moon"
   config.color_scheme = "Tokyo Night"
   -- config.color_scheme = "Catppuccin Macchiato (Gogh)"
   -- config.color_scheme = "Catppuccin Mocha"
   -- config.color_scheme = "City Lights (Gogh)" --dark as fuuck
   -- config.color_scheme = "Chester"
   -- config.color_scheme = "Cobalt 2 (Gogh)"
   -- config.color_scheme = "ChallengerDeep"
   config.font = wezterm.font("JetBrains Mono", { weight = "Bold" })
   config.font_size = 19.5
   
   config.window_background_opacity = 0.8
   config.macos_window_background_blur = 89
   config.window_decorations = "RESIZE"
   
   config.send_composed_key_when_left_alt_is_pressed = true
   config.send_composed_key_when_right_alt_is_pressed = true
   
   config.leader = { key = "s", mods = "CTRL", timeout_milliseconds = 2000 }
   
   local action = wezterm.action
   config.keys = {
   	{
   		key = "-",
   		mods = "LEADER",
   		action = action.SplitVertical({ domain = "CurrentPaneDomain" }),
   	},
   
   	{
   		key = ".",
   		mods = "LEADER",
   		action = action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
   	},
   	{
   		key = "p",
   		mods = "CMD|SHIFT",
   		action = action.ActivateCommandPalette,
   	},
   
   	-- Navigation between panes using leader + hjkl (like tmux)
   	{
   		key = "h",
   		mods = "LEADER",
   		action = action.ActivatePaneDirection("Left"),
   	},
   	{
   		key = "j",
   		mods = "LEADER",
   		action = action.ActivatePaneDirection("Down"),
   	},
   	{
   		key = "k",
   		mods = "LEADER",
   		action = action.ActivatePaneDirection("Up"),
   	},
   	{
   		key = "l",
   		mods = "LEADER",
   		action = action.ActivatePaneDirection("Right"),
   	},
   }
   
   return config
