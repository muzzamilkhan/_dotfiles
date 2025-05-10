local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require('lspconfig')
local servers = {
  "ts_ls",
  "lua_ls",
  "html",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.prismals.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = { "prisma" }
}
