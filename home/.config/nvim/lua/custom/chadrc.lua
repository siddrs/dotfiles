-- This is an example chadrc file , its supposed to be placed in /lua/custom dir
-- lua/custom/chadrc.lua

local M = {}

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
    shiftwidth = 4,
    smartindent = true,
    tabstop = 8, -- Number of spaces that a <Tab> in the file counts for
}

M.ui = {
    hl_override = "custom.highlights",
    italic_comments = true,
    theme = "tokyonight",
}

-- NvChad included plugin options & overrides
M.plugins = {

    status = {
        colorizer = true,
        dashboard = true,
        telescope_media = true,
    },

   options = {
        lspconfig = {
            -- path of file containing setups of different lsps (ex : "custom.plugins.lspconfig"), read the docs for more info
            setup_lspconf = "custom.plugins.lspconfig",
        },
        
        nvimtree = {
            enable_git = 0,
        },

        statusline = {

            hidden = {
                "help",
                "terminal",
            },

            shown = {
                "dashboard",
                "nvimtree",
            },
        }
    },

   -- To change the Packer `config` of a plugin that comes with NvChad,
   -- add a table entry below matching the plugin github name
   --              '-' -> '_', remove any '.lua', '.nvim' extensions
   -- this string will be called in a `require`
   --              use "(custom.configs).my_func()" to call a function
   --              use "custom.blankline" to call a file
   default_plugin_config_replace = {},
}

return M
