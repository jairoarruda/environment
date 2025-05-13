-- import null-ls plugin safely
local setup, null_ls = pcall(require, "null-ls")
if not setup then
	return
end

-- for conciseness
local formatting = null_ls.builtins.formatting -- to setup formatters
local diagnostics = null_ls.builtins.diagnostics -- to setup linters

-- to setup format on save
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- configure null_ls
null_ls.setup({
	-- setup formatters & linters
	sources = {
		--  to disable file types use
		--  "formatting.prettier.with({disabled_filetypes: {}})" (see null-ls docs)
		null_ls.builtins.formatting.prettier, -- js/ts formatter
		null_ls.builtins.formatting.stylua, -- lua formatter
		null_ls.builtins.formatting.csharpier, -- csharp formatter
		null_ls.builtins.formatting.black, --python formatter
	},
})
