local M = {}

M.setup_lsp = function(attach, capabilities)
    local lspconfig = require "lspconfig"

    -- lspservers with default config
    local servers = { "yamlls", "rust_analyzer", "vimls", "jsonls", "clangd", "bashls", "cssls", "pyright", "csharp_ls", "html", "sumneko_lua", "cmake" }
    for _, lsp in ipairs(servers) do
        lspconfig[lsp].setup {
            on_attach = attach,
            capabilities = capabilities,
            flags = {
            debounce_text_changes = 150,
        },
    }
   end

end

return M
