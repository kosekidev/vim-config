return {
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons" },
	},
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-treesitter/nvim-treesitter",
			"nvim-tree/nvim-web-devicons",
			"nvim-telescope/telescope-fzf-native.nvim",
		},
		lazy = true,
		config = function()
			local telescope = require("telescope")
			local action_generate = require("telescope.actions.generate")
			local fb_actions = require("telescope._extensions.file_browser.actions")

			telescope.setup({
				defaults = {
					file_ignore_patterns = { "^node_modules/" },
					layout_strategy = "horizontal",
					layout_config = { prompt_position = "top" },
					sorting_strategy = "ascending",
					winblend = 0,
					mappings = {
						i = {
							["<C-u>"] = action_generate.which_key({
								name_width = 20, -- typically leads to smaller floats
								max_height = 0.5, -- increase potential maximum height
								separator = " > ", -- change sep between mode, keybind, and name
								close_with_action = false, -- do not close float on action
							}),
						},
					},
				},
				extensions = {
					file_browser = {
						use_fd = true,
						mappings = {
							["i"] = {
								["<C-r>"] = fb_actions.rename,
								["<C-c>"] = fb_actions.create,
								["<C-x>"] = fb_actions.remove,
							},
						},
					},
				},
			})

			telescope.load_extension("fzf")
			telescope.load_extension("file_browser")
		end,
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Find Files" },
			{ "<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Grep files" },
			{ "<leader>:", "<cmd>Telescope command_history<cr>", desc = "Command History" },
			-- find
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Opened buffers" },
			{ "<leader>fr", "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },
			-- search
			{ "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>", desc = "Document diagnostics" },
			{ "<leader>sD", "<cmd>Telescope diagnostics<cr>", desc = "Workspace diagnostics" },
			{ "<leader>sh", "<cmd>Telescope help_tags<cr>", desc = "Help Pages" },
			{
				"<leader>sH",
				"<cmd>Telescope highlights<cr>",
				desc = "Search Highlight Groups",
			},
			{ "<leader>sk", "<cmd>Telescope keymaps<cr>", desc = "Key Maps" },
			{ "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
			{ "<leader>sm", "<cmd>Telescope marks<cr>", desc = "Jump to Mark" },
			{
				"<leader>ss",
				function()
					local builtin = require("telescope.builtin")

					builtin.lsp_document_symbols({
						symbols = {
							"Class",
							"Function",
							"Method",
							"Constructor",
							"Interface",
							"Module",
							"Struct",
							"Trait",
							"Field",
							"Property",
						},
					})
				end,
				desc = "Goto Symbol",
			},
			{
				"<leader>sS",
				function()
					local builtin = require("telescope.builtin")

					builtin.lsp_dynamic_workspace_symbols({
						symbols = {
							"Class",
							"Function",
							"Method",
							"Constructor",
							"Interface",
							"Module",
							"Struct",
							"Trait",
							"Field",
							"Property",
						},
					})
				end,
				desc = "Goto Symbol (Workspace)",
			},
		},
	},
}
