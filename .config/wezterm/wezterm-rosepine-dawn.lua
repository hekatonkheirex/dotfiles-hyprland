local wezterm = require("wezterm")

local xcursor_size = nil
local xcursor_theme = nil

local success, stdout, stderr = wezterm.run_child_process({"gsettings", "get", "org.gnome.desktop.interface", "cursor-theme"})
if success then
  xcursor_theme = stdout:gsub("'(.+)'\n", "%1")
end

local success, stdout, stderr = wezterm.run_child_process({"gsettings", "get", "org.gnome.desktop.interface", "cursor-size"})
if success then
  xcursor_size = tonumber(stdout)
end
local function font_with_fallback(name, params)
	local names = { name, "Apple Color Emoji", "azuki_font" }
	return wezterm.font_with_fallback(names, params)
end

local font_name = "Cartograph CF"

local colors = {
	-- special
	foreground = "#575279",
	darker_background = "#e1dbd5",
	background = "#faf4ed",
	lighter_background = "#fffaf3",
	one_background = "#f2e9e1",

	-- black
	color0 = "#fffaf3",
	color8 = "#f2e9e1",

	-- red
	color1 = "#b4637a",
	color9 = "#b4637a",

	-- green
	color2 = "#31748f",
	color10 = "#31748f",

	-- yellow
	color3 = "#ea9d34",
	color11 = "#ea9d34",

	-- blue
	color4 = "#286983",
	color12 = "#286983",

	-- magenta
	color5 = "#d7827e",
	color13 = "#d7827e",

	-- cyan
	color6 = "#56949f",
	color14 = "#56949f",

	-- white
	color7 = "#797593",
	color15 = "#9893a5",
}

return {
	-- OpenGL for GPU acceleration, Software for CPU
	front_end = "OpenGL",

	-- Font config
	font = font_with_fallback(font_name),
	font_rules = {
		{
			italic = true,
			font = font_with_fallback(font_name, { italic = true }),
		},
		{
			italic = true,
			intensity = "Bold",
			font = font_with_fallback(font_name, { bold = true, italic = true }),
		},
		{
			intensity = "Bold",
			font = font_with_fallback(font_name, { bold = true }),
		},
		{
			intensity = "Half",
			font = font_with_fallback(font_name, { weight = "Light" }),
		},
	},
	font_size = 11,
	line_height = 1.0,

	-- Cursor style
	default_cursor_style = "BlinkingUnderline",

	-- X11
	enable_wayland = false,

	-- Keybinds
	disable_default_key_bindings = true,
	keys = {
		{
			key = [[\]],
			mods = "CTRL|ALT",
			action = wezterm.action({
				SplitHorizontal = { domain = "CurrentPaneDomain" },
			}),
		},
		{
			key = [[\]],
			mods = "CTRL",
			action = wezterm.action({
				SplitVertical = { domain = "CurrentPaneDomain" },
			}),
		},
		{
			key = "q",
			mods = "CTRL",
			action = wezterm.action({ CloseCurrentPane = { confirm = false } }),
		},
		{
			key = "h",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ ActivatePaneDirection = "Left" }),
		},
		{
			key = "l",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ ActivatePaneDirection = "Right" }),
		},
		{
			key = "k",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ ActivatePaneDirection = "Up" }),
		},
		{
			key = "j",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ ActivatePaneDirection = "Down" }),
		},
		{
			key = "h",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action({ AdjustPaneSize = { "Left", 1 } }),
		},
		{
			key = "l",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action({ AdjustPaneSize = { "Right", 1 } }),
		},
		{
			key = "k",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action({ AdjustPaneSize = { "Up", 1 } }),
		},
		{
			key = "j",
			mods = "CTRL|SHIFT|ALT",
			action = wezterm.action({ AdjustPaneSize = { "Down", 1 } }),
		},
		{ -- browser-like bindings for tabbing
			key = "t",
			mods = "CTRL",
			action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }),
		},
		{
			key = "w",
			mods = "CTRL",
			action = wezterm.action({ CloseCurrentTab = { confirm = false } }),
		},
		{
			key = "Tab",
			mods = "CTRL",
			action = wezterm.action({ ActivateTabRelative = 1 }),
		},
		{
			key = "Tab",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ ActivateTabRelative = -1 }),
		}, -- standard copy/paste bindings
		{
			key = "x",
			mods = "CTRL",
			action = "ActivateCopyMode",
		},
		{
			key = "v",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ PasteFrom = "Clipboard" }),
		},
		{
			key = "c",
			mods = "CTRL|SHIFT",
			action = wezterm.action({ CopyTo = "ClipboardAndPrimarySelection" }),
		},
	},

	bold_brightens_ansi_colors = false,
	colors = {
		background = colors.background,
		foreground = colors.foreground,

		cursor_bg = colors.foreground,
		cursor_fg = colors.foreground,
		cursor_border = colors.foreground,

		selection_fg = colors.background,
		selection_bg = colors.color4,

		scrollbar_thumb = colors.foreground,

		split = colors.lighter_background,

		ansi = {
			colors.color0,
			colors.color1,
			colors.color2,
			colors.color3,
			colors.color4,
			colors.color5,
			colors.color6,
			colors.color7,
		},

		brights = {
			colors.color8,
			colors.color9,
			colors.color10,
			colors.color11,
			colors.color12,
			colors.color13,
			colors.color14,
			colors.color15,
		},

		tab_bar = {
			active_tab = {
				bg_color = colors.background,
				fg_color = colors.foreground,
				italic = true,
			},
			inactive_tab = { bg_color = colors.darker_background, fg_color = colors.background },
			inactive_tab_hover = { bg_color = colors.one_background, fg_color = colors.darker_background },
			new_tab = { bg_color = colors.one_background, fg_color = colors.darker_background },
			new_tab_hover = { bg_color = colors.color4, fg_color = colors.darker_background },
		},
	},

	-- Padding
	window_padding = {
		left = 15,
		right = 15,
		top = 15,
		bottom = 15,
	},

	-- Tab Bar
	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	show_tab_index_in_tab_bar = false,
	tab_bar_at_bottom = true,

	-- General
  animation_fps = 1,
  cursor_blink_rate = 1000,
  cursor_blink_ease_in = "Constant",
  cursor_blink_ease_out = "Constant",
  enable_kitty_graphics = true,
	automatically_reload_config = true,
	inactive_pane_hsb = { saturation = 1.0, brightness = 1.0 },
	window_frame = { active_titlebar_bg = colors.darker_background },
	exit_behavior = "CloseOnCleanExit",
	window_decorations = "RESIZE",
	selection_word_boundary = " \t\n{}[]()\"'`,;:",
  warn_about_missing_glyphs = false,
  xcursor_theme = xcursor_theme,
  xcursor_size = xcursor_size,
  check_for_updates = false,
}
