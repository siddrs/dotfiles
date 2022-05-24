local custom_colors = require('lualine.themes.jellybeans')

custom_colors.normal.c.bg = "#191919"
custom_colors.normal.c.fg = "#888888"
custom_colors.inactive.c.bg = "#151515"
custom_colors.inactive.c.fg = "#888888"


-- mode colors
-- local mode_bg = "#212121"
-- local mode_fg = "#888888"

custom_colors.normal.a.bg = "#597bc5"
custom_colors.insert.a.bg = "#99ad6a"
custom_colors.visual.a.bg = "#d8ad4c"
custom_colors.replace.a.bg = "#cf6a4c"

custom_colors.normal.a.fg = "#151515"
custom_colors.visual.a.fg = "#151515"
custom_colors.insert.a.fg = "#151515"
custom_colors.replace.a.fg = "#151515"

-- filename colors
local fn_bg = "#212121"
local fn_fg = "#888888"

custom_colors.normal.b.bg = fn_bg
custom_colors.insert.b.bg = fn_bg
custom_colors.visual.b.bg = fn_bg
custom_colors.replace.b.bg = fn_bg

custom_colors.normal.b.fg = fn_fg
custom_colors.insert.b.fg = fn_fg
custom_colors.visual.b.fg = fn_fg
custom_colors.replace.b.fg = fn_fg

require 'lualine'.setup {
  options = {
    icons_enabled = true,
    padding = 1,
    theme = custom_colors,
    component_separators = { left = '|', right = '|' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = { "NvimTree" },
    always_divide_middle = true,
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'filename' },
    lualine_c = {
      {
        'diagnostics',

        -- Table of diagnostic sources, available sources are:
        -- 'nvim_lsp', 'nvim_diagnostic', 'coc', 'ale', 'vim_lsp'.
        sources = { 'nvim_diagnostic', 'coc' },

        sections = { 'error', 'warn', 'info', 'hint' },

        diagnostics_color = {
          -- Same values as the general color option can be used here.
          error = { fg = "#cf6a4c", bg = "#191919" }, -- Changes diagnostics' error color.
          warn  = { fg = "#d8ad4c", bg = "#191919" }, -- Changes diagnostics' warn color.
          info  = { fg = "#8197bf", bg = "#191919" }, -- Changes diagnostics' info color.
          hint  = { fg = "#c6b6ee", bg = "#191919" }, -- Changes diagnostics' hint color.
        },
        symbols = { error = ' ', warn = ' ', info = ' ', hint = " " },
        colored = true, -- Displays diagnostics status in color if set to true.
        update_in_insert = false, -- Update diagnostics in insert mode.
        always_visible = false, -- Show diagnostics even if there are none.
      }
    },
    lualine_x = {
      {
        'diff',
        colored = true, -- Displays a colored diff status if set to true
        diff_color = {
          -- Same color values as the general color option can be used here.
          added    = { fg = "#99ad6a", bg = "#191919" }, -- Changes the diff's added color
          modified = { fg = "#8197bf", bg = "#191919" }, -- Changes the diff's modified color
          removed  = { fg = "#cf6a4c", bg = "#191919" }, -- Changes the diff's removed color you
        },
        symbols = { added = ' ', modified = '柳 ', removed = ' ' }, -- Changes the symbols used by the diff.
        source = nil, -- A function that works as a data source for diff.
        -- It must return a table as such:
        --   { added = add_count, modified = modified_count, removed = removed_count }
        -- or nil on failure. count <= 0 won't be displayed.
      }
    },
    lualine_y = { 'filetype' },
    lualine_z = { 'location' }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
