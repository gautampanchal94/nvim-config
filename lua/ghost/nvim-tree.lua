-- [[ ghost/Nvim-Tree.lua ]]

local status_ok, nvimtree = pcall(require, "nvim-tree")
if not status_ok then
	return
end

-- recommended settings from nvim-tree documentation
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- change color of folder open-close arrow
vim.cmd( [[ highlight NvimTreeIndentMarker guifg=#3FC5FF ]])

nvimtree.setup({
	renderer = {
		icons = {
			glyphs = {
				folder = {
					arrow_closed = "", -- arrow when folder closed
					arrow_open = "", -- arrow when folder open
				},
			},
		},
	},
})
