return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		harpoon:setup()

		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():add()
		end, {
			desc = "Add current file to Harpoon list",
		})
		vim.keymap.set("n", "<leader>ho", function()
			harpoon.ui:toggle_quick_menu(harpoon:list())
		end, {
			desc = "Open Harpoon quick menu",
		})
		vim.keymap.set("n", "<C-N>", function()
			harpoon:list():next()
		end, {
			desc = "Navigate to the next harpoon file",
		})
		vim.keymap.set("n", "<C-P>", function()
			harpoon:list():prev()
		end, {
			desc = "Navigate to the prev harpoon file",
		})
	end,
}
