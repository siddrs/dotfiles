local wezterm = require("wezterm")

local colors = {
	bg = "#16161E",
	fg = "#a9b1d6",
	black = "#24283b",
	red = "#f7768e",
	green = "#9ece6a",
	yellow = "#ff9e64",
	blue = "#7aa2f7",
	magenta = "#bb9af7",
	cyan = "#2ac3de",
	white = "#a9b1d6",
	cursor = "#a9b1d6",
}
local colors_f = {
	colors.black,
	colors.red,
	colors.green,
	colors.yellow,
	colors.blue,
	colors.magenta,
	colors.cyan,
	colors.white,
}

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	return "  " .. tab.active_pane.title .. "  "
end)

return {
	font = wezterm.font("JetBrainsMono Nerd Font"),
	font_size = 12,
	window_close_confirmation = "NeverPrompt",
	window_padding = { left = 16, right = 16, top = 16, bottom = 16 },
	tab_max_width = 25,
	enable_wayland = true,
	colors = {
		foreground = colors.fg,
		background = colors.bg,
		ansi = colors_f,
		cursor_fg = colors.cursor,
		cursor_bg = colors.cursor,
		cursor_border = colors.cursor,
		brights = colors_f,
		tab_bar = {
			background = colors.bg,
			active_tab = {
				bg_color = colors.black,
				fg_color = colors.fg,
				intensity = "Bold",
			},
			inactive_tab = {
				bg_color = "#282828",
				fg_color = colors.fg,
			},
			inactive_tab_hover = {
				bg_color = "#282828",
				fg_color = colors.fg,
				italic = true,
			},
		},
	},
	show_tab_index_in_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	exit_behavior = "Close",
}
