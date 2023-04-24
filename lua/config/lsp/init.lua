-- LSP configuration

-- install servers and tools
require "config.lsp.mason"

local lspconfig = require "lspconfig"
local servers = require "config.lsp.servers"


for server, setup in pairs(servers) do
    lspconfig[server].setup(setup())
end

-- require "config.lsp.null-ls"
