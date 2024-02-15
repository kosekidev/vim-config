return {
	"ThePrimeagen/harpoon",
	config = function()
		return {
			save_on_change = false,
			excluded_filetypes = { "harpoon" },
			mark_branch = false,
			tabline = false,
			menu = {
				width = vim.api.nvim_win_get_width(0) - 4,
			},
		}
	end,
}
