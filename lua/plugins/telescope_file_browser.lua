return {
	"nvim-telescope/telescope-file-browser.nvim",
	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
	config = function()
		local fb_actions = require("telescope._extensions.file_browser.actions")

		require("telescope").setup({
			extensions = {
				file_browser = {
					mappings = {
						["i"] = {
							["<C-r>"] = fb_actions.rename,
							["<C-A>"] = fb_actions.create,
						},
					},
				},
			},
		})

		require("telescope").load_extension("file_browser")
	end,
}
