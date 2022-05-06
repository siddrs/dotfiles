vim.defer_fn(function()
     vim.cmd [[
        source $HOME/.config/nvim/lazyload/lua/treesitter.lua
        source $HOME/.config/nvim/lazyload/lua/lsp.lua
        source $HOME/.config/nvim/lazyload/lua/cmp.lua

        LspStart
    ]]
    end, 60)
