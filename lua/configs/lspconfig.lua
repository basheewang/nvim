-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require("lspconfig")

-- EXAMPLE
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
local servers = {
	-- "html",
	-- "cssls",
	"jsonls",
	"powershell_es",
}
local nvlsp = require("nvchad.configs.lspconfig")

-- lsps with default config
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = nvlsp.on_attach,
		on_init = nvlsp.on_init,
		capabilities = nvlsp.capabilities,
	})
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

lspconfig.powershell_es.setup({
	on_attach = nvlsp.on_attach, -- your on_attach function if you have one
	capabilities = nvlsp.capabilities, -- your capabilities if you have customized them
	filetypes = { "ps1", "psm1", "psd1" },
	shell = "pwsh.exe",
	-- bundle_path='c:/Users/wanchen/AppData/Local/nvim-data/mason/packages/powershell-editor-services'
	bundle_path = vim.fn.expand(vim.fn.stdpath("data") .. "\\mason\\packages\\powershell-editor-services"),
})
