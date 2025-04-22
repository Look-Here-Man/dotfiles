return
{
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    config = function()
        require('mason-lspconfig.nvim').omnisharp.setup({})
    end
}
