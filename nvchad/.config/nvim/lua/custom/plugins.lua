local plugins = {
  {
    "vimwiki/vimwiki", lazy = false
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      view = {
        side = "right",
        width = 100,
      },
    }
  },
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
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
        require("null-ls").setup()
    end,
    requires = { "nvim-lua/plenary.nvim" },
}
}

return plugins
