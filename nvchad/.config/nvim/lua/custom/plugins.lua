local plugins = {
    {
        "vimwiki/vimwiki",
        lazy = false,
    },
    {
        "nvim-tree/nvim-tree.lua",
        opts = {
            view = {
                side = "right",
                width = 50,
            },
        },
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "jose-elias-alvarez/null-ls.nvim",
            config = function()
                require("custom.configs.null-ls")
            end,
            requires = { "nvim-lua/plenary.nvim" },
        },
        config = function()
            require("plugins.configs.lspconfig")
            require("custom.configs.lspconfig")
        end,
    },
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "typescript-language-server",
                "lua-language-server",
                "html-lsp",
                "stylua",
                "prisma-language-server",
            },
        },
    },
    { "f-person/git-blame.nvim",  lazy = false },
    { "MunifTanjim/prettier.nvim" },
}

return plugins
