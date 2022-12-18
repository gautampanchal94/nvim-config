local status_ok, blankline = pcall(require, "indent_blankline")
if not status_ok then
	return
end

blankline.setup({
	char = "┊", -- change backline char
	show_trailing_blankline_indent = false,
	space_char_blankline = " ", -- don't show space char in blank line
	show_current_context = true, -- show function contex
	show_current_context_start = true,
})
