local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = {}

config.window_background_opacity = 0.90
config.macos_window_background_blur = 20
config.window_decorations = "NONE"
config.enable_tab_bar = false
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0
config.color_scheme = "Tokyo Night Storm"

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():toggle_fullscreen()
end)

return config

