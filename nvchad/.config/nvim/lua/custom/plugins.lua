local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "lua-language-server",
        "html-lsp",
        "prettier",
        "stylua",
        "prisma-language-server",
      },
    },
  },
  { "f-person/git-blame.nvim", lazy = false },
}

return plugins
