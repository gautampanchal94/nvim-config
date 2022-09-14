-- [[ lua/ghost/keymaps.lua ]]

local opts = { noremap = true, silent = true }

local term_opts = {silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- Keymap(1,2,3,4)
--  1 : Mode
--  2 : custom keymap
--  3 : existing keymap
--  4 : options

-- Remap colon(,) as leader key
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- Modes
--  normal_mode = "n"
--  insert_mode = "i"
--  visual_mode = "v"
--  visual_block_mode = "x"
--  term_mode = "t"
--  command_mode = "c"

-- keymap("n", "<leader>e", ":Lex 30<cr>", opts)

-- Insert Mode --
-- leaving insert mode 
keymap('i','jk','<ESC>',opts)

-- Visual Mode --
-- Stay in indent mode
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- Mode text up and down
keymap('v', '<A-j>', ':m .+1<CR>==', opts)
keymap('v', '<A-k>', ':m .-2<CR>==', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Normal Mode --
-- NvimTree
keymap("n","n",[[:NvimTreeToggle<CR>]],opts)

