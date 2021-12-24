-- This is an example init file , its supposed to be placed in /lua/custom dir
-- lua/custom/init.lua

-- This is where your custom modules and plugins go.
-- Please check NvChad docs if you're totally new to nvchad + dont know lua!!

local hooks = require "core.hooks"

-- MAPPINGS
-- To add new plugins, use the "setup_mappings" hook,

hooks.add("setup_mappings", function(map)
   map("n", "<leader>cc", ":Telescope <CR>", opt)
   map("n", "<leader>q", ":q <CR>", opt)
end)

-- NOTE : opt is a variable  there (most likely a table if you want multiple options),
-- you can remove it if you dont have any custom options

-- Install plugins
-- To add new plugins, use the "install_plugin" hook,

-- examples below:

hooks.add("install_plugins", function(use)
    
    -- use {
    --   "max397574/better-escape.nvim",
    --   event = "InsertEnter",
    -- }

    use {
    "andweeb/presence.nvim",
    --further packer options
    }

    use {
    "Manas140/run.nvim",
    }

    use {
        "williamboman/nvim-lsp-installer",
        config = function()
            local lsp_installer = require "nvim-lsp-installer"

        lsp_installer.on_server_ready(function(server)
            local opts = {}

            server:setup(opts)
            vim.cmd [[ do User LspAttachBuffers ]]
            end)
        end,
    }

    use {
        "karb94/neoscroll.nvim",
        opt = true,
        config = function()
            require("neoscroll").setup()
        end,
        
        -- lazy loading
        setup = function()
            require("core.utils").packer_lazy_load "neoscroll.nvim"
        end,
    }

    use {
        "elkowar/yuck.vim"
    }

end)

-- NOTE: we heavily suggest using Packer's lazy loading (with the 'event' field)
-- see: https://github.com/wbthomason/packer.nvim
-- https://nvchad.github.io/config/walkthrough
