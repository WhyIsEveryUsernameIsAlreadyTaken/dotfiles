-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.enable_tab_bar = false

-- For example, changing the color scheme:
local custom = wezterm.color.get_builtin_schemes()["Catppuccin Mocha"]
custom.background = '#1c1c1c'

config.color_schemes = {
    ['tokyonight_night_custom'] = custom
}
config.color_scheme = 'tokyonight_night_custom'

-- and finally, return the configuration to wezterm
return config
