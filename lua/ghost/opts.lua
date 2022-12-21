-- [[ ghost/opts.lua ]]

local opt = vim.opt

-- [[ Context ]]
-- opt.guicursor = "" -- set cursor as block
opt.number = true -- set line numbers
opt.relativenumber = true -- set relative line numbers
opt.scrolloff = 8 -- min num lines of context
opt.signcolumn = "yes" -- show the sign column
opt.cursorline = true -- highlight current line

-- [[ Filetypes ]]
opt.encoding = "utf8" -- string encoding to use
opt.fileencoding = "utf8" -- File encoding to use
opt.backup = false -- creates a backup file
opt.swapfile = false -- swapping file

-- [[ Search ]]
opt.ignorecase = true -- ignore case in search pattern
opt.smartcase = true -- smart case
opt.incsearch = true -- use incremental search
opt.hlsearch = false -- highlight search matches

-- [[ Theme ]]
opt.termguicolors = true -- set term gui colors
opt.wrap = false -- display lines as one long line
opt.linebreak = true -- companion to wrap, don't split words
opt.guifont = "monospace:h12" -- the font used in graphical neovim app
opt.background = "dark" -- make defalut background dark
opt.signcolumn = "yes"

-- [[ Whitespace ]]
opt.expandtab = true -- use spaces instead of tabs
opt.shiftwidth = 4 -- size of an indent
opt.softtabstop = 4 -- number of spaces tabs count for in insert mode
opt.tabstop = 4 -- number of spaces tabs count for

-- [[ Backspace ]]
opt.backspace = "indent,eol,start" -- make backspace work better

-- [[ Splits ]]
opt.splitright = true -- Place new window to right of current one
opt.splitbelow = true -- Place new window below the current one

-- [[ Indent Backline ]]
-- Enable `lukas-reineke/indent-blankline.nvim`
-- See `:help indent_blankline.txt`
opt.list = true
opt.listchars:append("space:⋅")

-- [[ Extra Options ]]
-- opt.iskeyword:append("-") -- it will make '-' count as one word
opt.shortmess:append("c")

vim.cmd([[set clipboard+=unnamedplus]])

if vim.fn.has("wsl") == 1 then
	vim.g.clipboard = {
		name = "win32yank-wsl",
		copy = {
			["+"] = "win32yank.exe -i --crlf",
			["*"] = "win32yank.exe -i --crlf",
		},
		paste = {
			["+"] = "win32yank.exe -o --lf",
			["*"] = "win32yank.exe -o --lf",
		},
		cache_enabled = false,
	}
end
