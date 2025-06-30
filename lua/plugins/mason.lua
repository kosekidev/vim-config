return {
	{
		"mason-org/mason.nvim",
		init = function()
			vim.keymap.set("n", "<leader>cm", ":Mason<CR>", {
				silent = true,
				desc = "Open Mason manager",
			})
		end,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				automatic_enable = false,
				ensure_installed = {
					"lua_ls",
					"ts_ls",
					"eslint",
					"html",
					"cssls",
					"jsonls",
					"vue_ls",
				},
			})
		end,
	},
}
