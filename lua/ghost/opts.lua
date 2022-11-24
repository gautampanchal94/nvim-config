-- [[ ghost/opts.lua ]]

local opt = vim.opt

-- [[ Context ]]
opt.number = true -- set line numbers
opt.relativenumber = true -- set relative line numbers
opt.scrolloff = 8 -- min num lines of context
opt.signcolumn = "yes" -- show the sign column
opt.cursorline = false -- highlight current line

-- [[ Filetypes ]]
opt.encoding = "utf8" -- string encoding to use
opt.fileencoding = "utf8" -- File encoding to use
opt.backup = false -- creates a backup file
opt.swapfile = false -- swapping file

-- [[ Search ]]
opt.ignorecase = true -- ignore case in search pattern
opt.smartcase = true -- smart case
opt.incsearch = true -- use incremental search
opt.hlsearch = true -- highlight search matches

-- [[ Theme ]]
opt.termguicolors = false -- set term gui colors
opt.wrap = true -- display lines as one long line
opt.linebreak = true -- companion to wrap, don't split words
opt.guifont = "monospace:h12" -- the font used in graphical neovim app

-- [[ Whitespace ]]
opt.expandtab = true -- use spaces instead of tabs
opt.shiftwidth = 4 -- size of an indent
opt.softtabstop = 4 -- number of spaces tabs count for in insert mode
opt.tabstop = 4 -- number of spaces tabs count for

-- [[ Splits ]]
opt.splitright = true -- Place new window to right of current one
opt.splitbelow = true -- Place new window below the current one

vim.opt.shortmess:append("c")
