local wezterm = require 'wezterm';

return {
  window_padding = {
    top = 10,
    bottom = 10,
    left = 10,
    right = 10,
  },
  scrollback_lines = 100000,
  font_size = 10,
  enable_scroll_bar = true,
  font = wezterm.font("Berkeley Mono"),
  bold_brightens_ansi_colors = true,

  colors = {
    foreground = "#eaf2f1",
    background = "#282a3a",
    cursor_bg = "#eaf2f1",
    cursor_border = "#eaf2f1",
    cursor_fg = "#000000",
    selection_fg = "#3a3d4b",
    selection_bg = "#eaf2f1",
    scrollbar_thumb = "#53576a",


    ansi = {"#3a3d4b","#ff657a","#bad761","#ffd76d","#ff9b5e","#c39ac9","#9cd1bb","#eaf2f1"},
    brights = {"#696d77","#ff657a","#bad761","#ffd76d","#ff9b5e","#c39ac9","#9cd1bb","#eaf2f1"},
  },

  keys = {
    {key="+", mods="ALT", action="IncreaseFontSize"},
    {key="-", mods="ALT", action="DecreaseFontSize"},
    {key="0", mods="ALT", action="ResetFontSize"},

    -- iTerm keybinding equivalents for Wezterm
    -- Copy / Paste
    {key="c", mods="ALT", action=wezterm.action{CopyTo="Clipboard"}},
    {key="v", mods="ALT", action=wezterm.action{PasteFrom="Clipboard"}},

    -- Tab management
    {key="t", mods="ALT", action=wezterm.action{SpawnTab="CurrentPaneDomain"}},
    {key="w", mods="ALT", action=wezterm.action{CloseCurrentTab={confirm=true}}},

    -- Tab switching
    {key="LeftArrow", mods="ALT", action=wezterm.action{ActivateTabRelative=-1}},
    {key="RightArrow", mods="ALT", action=wezterm.action{ActivateTabRelative=1}},

    -- Tab Moving
    {key="LeftArrow", mods="ALT|CTRL", action=wezterm.action{MoveTabRelative=-1}},
    {key="RightArrow", mods="ALT|CTRL", action=wezterm.action{MoveTabRelative=1}},

    -- Create panes
    {key="d", mods="ALT|SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    {key="d", mods="ALT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},

    -- Navigate between panes
    {key="LeftArrow", mods="ALT|SUPER", action=wezterm.action{ActivatePaneDirection="Left"}},
    {key="RightArrow", mods="ALT|SUPER", action=wezterm.action{ActivatePaneDirection="Right"}},
    {key="UpArrow", mods="ALT|SUPER", action=wezterm.action{ActivatePaneDirection="Up"}},
    {key="DownArrow", mods="ALT|SUPER", action=wezterm.action{ActivatePaneDirection="Down"}},

    -- Maximize/minimize any pane
    {key="Enter", mods="ALT|SHIFT", action="TogglePaneZoomState"},
  }
}
