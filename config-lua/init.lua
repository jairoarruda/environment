require("aton.plugins-setup")
require("aton.core.options")
require("aton.core.keymaps")
require("aton.core.colorscheme")
require("aton.plugins.comment")
require("aton.plugins.nvim-tree")
require("aton.plugins.lualine")
require("aton.plugins.telescope")
require("aton.plugins.nvim-cmp")
require("aton.plugins.lsp.mason")
require("aton.plugins.lsp.lspsaga")
require("aton.plugins.lsp.lspconfig")
require("aton.plugins.lsp.null-ls")
require("aton.plugins.autopairs")
require("aton.plugins.treesitter")
require("aton.plugins.gitsigns")
require("aton.plugins.dap-virtual-text")

vim.cmd([[
if !exists('g:loaded_transparent')
    let g:loaded_transparent = 1
endif

if !exists('g:python3_host_prog')
    let g:python3_host_prog = '/Users/aton/.asdf/shims/python3'
endif

if !exists('g:loaded_ruby_provider')
    let g:loaded_ruby_provider = 0
endif

if !exists('g:loaded_node_provider')
    let g:loaded_node_provider = 0
endif

if !exists('g:loaded_perl_provider')
    let g:loaded_perl_provider = 0
endif

]])

vim.api.nvim_create_user_command("Build", function()
	local csproj_files = {}
	local s_file_name = ""
	local files = vim.fn.globpath(vim.fn.getcwd(), "**/*.csproj", true, true)
	for _, file in ipairs(files) do
		local filename = vim.fn.fnamemodify(file, ":t")
		table.insert(csproj_files, filename)
		vim.api.nvim_out_write(filename)
		vim.api.nvim_out_write("\n")
	end
	if s_file_name == "" then
		vim.api.nvim_out_write("no file found")
		vim.api.nvim_out_write("\n")
	end

	vim.cmd(":split")
	vim.cmd(":terminal")
	vim.api.nvim_feedkeys("i", "n", false)
	vim.api.nvim_feedkeys("dotnet build " .. s_file_name, "t", false)
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<CR>", true, false, true), "t", false)
end, {})

local vim_api = vim.api


Load_tsp_bg, Tsp_bg = pcall(require, "aton.core.transparent")
if not Load_tsp_bg then
	print("transparent not loaded")
	return
end

Tsp_bg.setup({
	enable = true, -- boolean: enable transparent
	extra_groups = { -- table/string: additional groups that should be cleared
		"BufferLineTabClose",
		"BufferlineBufferSelected",
		"BufferLineFill",
		"BufferLineBackground",
		"BufferLineSeparator",
		"BufferLineIndicatorSelected",
	},
	exclude = {}, -- table: groups you don't want to clear
})
Tsp_bg.clear_bg()
Tsp_bg.toggle_transparent(true)

