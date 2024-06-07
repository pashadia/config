local wezterm = require 'wezterm'
local config = {}


config.font = wezterm.font {
  family = 'Monaspace Neon',
  weight = 'Light',
  harfbuzz_features = {
    'calt=1',
    'clig=1',
    'ss01=1',
    'ss02=1',
    'ss03=1',
    'ss04=1',
    'ss05=1',
    'ss06=1',
    'ss07=1',
    'ss08=1',
    'ss09=1',
    'liga=1',
  },
}

config.font_rules = {
  {
    italic = true,
    font = wezterm.font {
      family = 'Monaspace Radon'
    }
  },
}

config.font_size = 14

config.keys = {
  -- Turn off the default CMD-m Hide action, allowing CMD-m to
  -- be potentially recognized and handled by the tab
  {
    key = 'm',
    mods = 'CMD',
    action = wezterm.action.DisableDefaultAssignment,
  },

  -- Command-D to Control-D
  {
    key = 'd',
    mods = 'CMD',
    action = wezterm.action.SendKey {
      key = 'd',
      mods = 'CTRL'
    }
  },

  -- Command-T to Control-T
  {
    key = 't',
    mods = 'CMD',
    action = wezterm.action.SendKey {
      key = 't',
      mods = 'CTRL'
    }
  },

  -- Command-N to Control-T, n
  {
    key = 'n',
    mods = 'CMD',
    action = wezterm.action.Multiple {
      wezterm.action.SendKey {
        key = 't',
        mods = 'CTRL'
      },
      wezterm.action.SendKey { key = 'n' }
    }
  },

  -- Command-P to Control-P
  {
    key = 'p',
    mods = 'CMD',
    action = wezterm.action.SendKey {
      key = 'p',
      mods = 'CTRL'
    }
  },

  -- Command-Tab to Next Zellij tab (CMD/CTRL are swapped by Karabiner)
  {
    key = 'Tab',
    mods = "CTRL",
    action = wezterm.action.SendKey { key = 'RightArrow', mods = 'ALT' }
  }
,

  -- Command-Shift-Tab to Next Zellij tab (CMD/CTRL are swapped by Karabiner)
  {
    key = 'Tab',
    mods = "CTRL|SHIFT",
    action = wezterm.action.SendKey { key = 'LeftArrow', mods = 'ALT' }
  }
}

config.enable_csi_u_key_encoding = true
-- config.use_fancy_tab_bar = false
-- config.show_tabs_in_tab_bar = false
config.show_new_tab_button_in_tab_bar = false
config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
-- config.debug_key_events = true

return config
