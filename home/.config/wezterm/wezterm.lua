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
	cursor = "#9aa5ce",
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
    font_rules= {
      -- Select a fancy italic font for italic text
      {
        italic = true,
        font = wezterm.font("VictorMono Nerd Font", {weight="Medium", italic=true}),
      },

      -- Similarly, a fancy bold+italic font
     {
        italic = true,
        font = wezterm.font("VictorMono Nerd Font", {weight="Bold", italic=true}),
      },
    },
    font_size = 13,
	window_close_confirmation = "NeverPrompt",
	window_padding = { left = 18, right = 18, top = 18, bottom = 18 },
	tab_max_width = 25,
	enable_wayland = true,
	colors = {
		foreground = colors.fg,
		background = colors.bg,
		ansi = colors_f,
		cursor_fg = colors.bg,
		cursor_bg = colors.white,
		cursor_border = colors.white,
		brights = colors_f,
		tab_bar = {
			background = colors.bg,
			active_tab = {
				bg_color = colors.black,
				fg_color = colors.fg,
				intensity = "Bold",
			},
			inactive_tab = {
				bg_color = "#24283b",
				fg_color = colors.fg,
			},
			inactive_tab_hover = {
				bg_color = "#24283b",
				fg_color = colors.fg,
				italic = true,
			},
		},
	},
	show_tab_index_in_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	exit_behavior = "Close",
}
