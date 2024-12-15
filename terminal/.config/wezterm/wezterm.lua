local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action

config.color_scheme = 'Tokyo Night Moon'

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.tab_max_width = 24

config.inactive_pane_hsb = {
  saturation = 0.7,
  brightness = 0.6,
}

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.default_prog = { '/usr/bin/fish' }

config.font = wezterm.font('FiraCode Nerd Font Mono', { weight = 'Regular' })
config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

config.audible_bell = 'Disabled'
config.check_for_updates = false

config.disable_default_key_bindings = true
config.window_decorations = 'NONE'

--config.term = 'wezterm'

config.keys = {
  -- Tabs
  { key = 'T', mods = 'CTRL|SHIFT', action = act.SpawnTab 'DefaultDomain' },
  { key = 'W', mods = 'CTRL|SHIFT', action = act.CloseCurrentTab { confirm = false } },
  { key = '{', mods = 'CTRL|SHIFT', action = act.ActivateTabRelative(-1) },
  { key = '}', mods = 'CTRL|SHIFT', action = act.ActivateTabRelative(1) },
  { key = '{', mods = 'CTRL|ALT|SHIFT', action = act.MoveTabRelative(-1) },
  { key = '}', mods = 'CTRL|ALT|SHIFT', action = act.MoveTabRelative(1) },
  { key = '1', mods = 'CTRL', action = act.ActivateTab(0) },
  { key = '2', mods = 'CTRL', action = act.ActivateTab(1) },
  { key = '3', mods = 'CTRL', action = act.ActivateTab(2) },
  { key = '4', mods = 'CTRL', action = act.ActivateTab(3) },
  { key = '5', mods = 'CTRL', action = act.ActivateTab(4) },
  { key = '6', mods = 'CTRL', action = act.ActivateTab(5) },
  { key = '7', mods = 'CTRL', action = act.ActivateTab(6) },
  { key = '8', mods = 'CTRL', action = act.ActivateTab(7) },
  { key = '9', mods = 'CTRL', action = act.ActivateTab(8) },

  -- Panes
  { key = 'S', mods = 'CTRL|SHIFT', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = 'D', mods = 'CTRL|SHIFT', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
  { key = 'Z', mods = 'CTRL|SHIFT', action = act.TogglePaneZoomState },
  { key = 'H', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Left' },
  { key = 'J', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Down' },
  { key = 'K', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Up' },
  { key = 'L', mods = 'CTRL|SHIFT', action = act.ActivatePaneDirection 'Right' },
  { key = 'H', mods = 'CTRL|ALT|SHIFT', action = act.AdjustPaneSize { 'Left', 5 } },
  { key = 'J', mods = 'CTRL|ALT|SHIFT', action = act.AdjustPaneSize { 'Down', 5 } },
  { key = 'K', mods = 'CTRL|ALT|SHIFT', action = act.AdjustPaneSize { 'Up', 5 } },
  { key = 'L', mods = 'CTRL|ALT|SHIFT', action = act.AdjustPaneSize { 'Right', 5 } },

  -- Other
  { key = ')', mods = 'CTRL|SHIFT', action = act.ResetFontSize },
  { key = '+', mods = 'CTRL|SHIFT', action = act.IncreaseFontSize },
  { key = '_', mods = 'CTRL|SHIFT', action = act.DecreaseFontSize },

  { key = 'C', mods = 'CTRL|SHIFT', action = act.CopyTo 'Clipboard' },
  { key = 'V', mods = 'CTRL|SHIFT', action = act.PasteFrom 'Clipboard' },

  -- { key = 'K', mods = 'CTRL|SHIFT', action = act.ClearScrollback('ScrollbackOnly') },
  { key = 'N', mods = 'CTRL|SHIFT', action = act.SpawnWindow },
  { key = 'P', mods = 'CTRL|SHIFT', action = act.ActivateCommandPalette },

  { key = 'PageUp', mods = 'SHIFT', action = act.ScrollByPage(-1) },
  { key = 'PageDown', mods = 'SHIFT', action = act.ScrollByPage(1) },
}

return config
