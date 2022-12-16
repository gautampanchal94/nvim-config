--[[ lua/ghost/colorscheme.lua ]]

local colorscheme = "default"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
	vim.notify("colorscheme " .. colorscheme .. " not found!")
	return
end

local scheme = require("ofirkai.design").scheme -- get ofirkai colorscheme

require("ofirkai").setup({
	-- custom_hlgroups = {
	-- 	LineNr = {
	-- 		fg = scheme.comment_fg,
	-- 	},
	-- },
})
-- vim.cmd("colorscheme nightfly")
