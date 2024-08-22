-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:

config.window_background_image = '/Users/lukebrannagan/terminal.png'
config.window_background_image_hsb = {
  -- Darken the background image by reducing it to 1/3rd
  brightness = 0.04,

  -- You can adjust the hue by scaling its value.
  -- a multiplier of 1.0 leaves the value unchanged.
  hue = 0.5,

  -- You can adjust the saturation also.
  saturation = 0.9,
}

config.font = wezterm.font('SpaceMono Nerd Font') 


-- and finally, return the configuration to wezterm
return config
