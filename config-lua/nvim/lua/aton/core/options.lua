local opt = vim.opt -- for conciseness
vim.o.fileformat = "unix"

--config line numbers
opt.number = true
--opt.relativenumber = true

--config tabs
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

--line wrapping
opt.wrap = false

--seach settings
opt.ignorecase = true
opt.smartcase = true

--cursor line
opt.cursorline = true

--appearance
opt.termguicolors = true
opt.signcolumn = "yes"
opt.background = "dark"

--backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")

--split windows
opt.splitright = true
opt.splitbelow = true

--misc
opt.iskeyword:append("-")
