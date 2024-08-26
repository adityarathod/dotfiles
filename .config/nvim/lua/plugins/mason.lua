local M ={
    'williamboman/mason.nvim',
    dependencies = {'williamboman/mason-lspconfig.nvim', 'nvim-lua/plenary.nvim'},
}
function M.config() 
    local lsp = require('lsp-zero')
    lsp.preset('recommended')

    require('lsp-zero').setup()
    require('mason').setup()

    require('mason-lspconfig').setup_handlers {
        ['rust_analyzer'] = function() end,
    }

    require('mason-lspconfig').setup_handlers {
        function(server_name)
            require 'lspconfig' [server_name].setup {}
        end
    }

    require('mason-lspconfig').setup {
        ensure_installed = {},
        automatic_installation = true
    }

    vim.diagnostic.config({
        virtual_text = true,
        update_in_insert = true,
    })
end

return M
