-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
-- config.color_scheme = 'AdventureTime'
config.audible_bell = "Disabled"

-- Tabs
config.enable_tab_bar = false

config.enable_wayland = true

config.scrollback_lines = 500000

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}


-- and finally, return the configuration to wezterm
return config
