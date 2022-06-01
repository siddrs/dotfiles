require 'nvim-tree'.setup {
	disable_netrw        = true,
	hijack_netrw         = true,
	open_on_setup        = false,
	ignore_ft_on_setup   = {},
	auto_reload_on_write = true,
	open_on_tab          = false,
	hijack_cursor        = false,
	update_cwd           = false,
	hijack_directories   = {
		enable = true,
		auto_open = true,
	},
	renderer             = {
		icons = {
			webdev_colors = true,
			show = {
				git = true,
				folder = true,
				file = true,
				folder_arrow = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				git = {
					deleted = "",
					ignored = "",
					renamed = "",
					staged = "",
					unmerged = "",
					unstaged = "",
					untracked = "",
				},
				folder = {
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
					arrow_open = "",
					arrow_closed = "",
				},
			},
		},
		indent_markers = {
			enable = false,
			icons = {
				corner = "╰╴ ",
				edge = "│  ",
				none = "  ",
			},
		},
	},
	diagnostics          = {
		enable = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		}
	},
	update_focused_file  = {
		enable      = false,
		update_cwd  = false,
		ignore_list = {}
	},
	system_open          = {
		cmd  = nil,
		args = {}
	},
	filters              = {
		dotfiles = false,
		custom = {}
	},
	git                  = {
		enable = true,
		ignore = true,
		timeout = 500,
	},
	view                 = {
		width = 30,
		height = 25,
		hide_root_folder = true,
		side = 'right',
		auto_resize = true,
		mappings = {
			custom_only = false,
			list = {}
		},
		number = false,
		relativenumber = false,
		signcolumn = "yes"
	},
	trash                = {
		cmd = "trash",
		require_confirm = true
	},
	actions              = {
		change_dir = {
			global = false,
		},
		open_file = {
			quit_on_open = true,
		}
	}
}
