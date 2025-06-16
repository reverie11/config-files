require('mason').setup()
require('mason-lspconfig').setup()

local lspconfig = require("lspconfig")


lspconfig.gopls.setup {
	cmd = {"gopls"},
	filetypes = { "go", "gomod", "gowork", "gotmpl" },
}

-- lspconfig.asm_lsp.setup{
--    filetypes = { "asm", "s", "S" },  -- ensure these match your use
--    root_dir = lspconfig.util.root_pattern(".git", "."),
-- }

--lspconfig.pyright.setup{
--	cmd = {"python3"},
--}
--
--

lspconfig.jedi_language_server.setup{}

--lspconfig.clangd.setup{
  -- filetypes = { "c", "cpp", "objc", "objcpp", "asm", "s", "S" }, -- include asm support
  -- cmd = { "clangd", "--background-index" },
--
--}

