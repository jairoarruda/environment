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
]])

vim.cmd([[
if !exists('g:OmniSharp_server_stdio')
    let g:OmniSharp_server_stdio = 0
endif
]])

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

local vim_api = vim.api

local transparent_group = vim_api.nvim_create_augroup("TransparentGroup", { clear = true })
vim_api.nvim_create_autocmd("VimEnter,ColorScheme", {
	command = "lua Tsp_bg.clear_bg()",
	group = transparent_group,
})

vim.cmd([[
if !exists('g:ale_sign_error')
    let g:ale_sign_error = "•"
endif

if !exists('g:ale_sign_warning')
    let g:ale_sign_warning = "•"
endif

if !exists('g:ale_sign_info')
    let g:ale_sign_info = "·"
endif

if !exists('g:ale_sign_style_error')
    let g:ale_sign_style_error = "·"
endif

if !exists('g:ale_sign_style_warning')
    let g:ale_sign_style_warning = "·"
endif

if !exists('g:using_snippets')
    let g:using_snippets = 0
endif

if !exists('g:ale_linters')
    let g:ale_linters = { 'cs': ['OmniSharp'] }
endif

if !exists('g:OmniSharp_popup_position')
    let g:OmniSharp_popup_position = 'peek'
endif

if has('nvim')
  let g:OmniSharp_popup_options = {
  \ 'winblend': 30,
  \ 'winhl': 'Normal:Normal,FloatBorder:ModeMsg',
  \ 'border': 'rounded'
  \}
else
  let g:OmniSharp_popup_options = {
  \ 'highlight': 'Normal',
  \ 'padding': [0],
  \ 'border': [1],
  \ 'borderchars': ['─', '│', '─', '│', '╭', '╮', '╯', '╰'],
  \ 'borderhighlight': ['ModeMsg']
  \}
endif

let g:OmniSharp_popup_mappings = {
\ 'sigNext': '<C-n>',
\ 'sigPrev': '<C-p>',
\ 'pageDown': ['<C-f>', '<PageDown>'],
\ 'pageUp': ['<C-b>', '<PageUp>']
\}

if g:using_snippets
  let g:OmniSharp_want_snippet = 1
endif

let g:OmniSharp_highlight_groups = {
\ 'ExcludedCode': 'NonText'
\}
]])
