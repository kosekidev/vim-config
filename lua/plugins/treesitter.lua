return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPost", "BufNewFile" },
		opts = {
			autota = {
				enable = true,
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			sync_install = false,
			ensure_installed = {
				"rust",
				"html",
				"javascript",
				"typescript",
				"tsx",
				"json",
				"lua",
				"luadoc",
				"query",
				"regex",
				"vim",
				"vimdoc",
			},
			textobjects = {
				-- select = {
				--     enable = true,
				--     lookahead = true,
				--     keymaps = {
				--         ["aa"] = "@parameter.outer",
				--         ["ia"] = "@parameter.inner",
				--         ["af"] = "@function.outer",
				--         ["if"] = "@function.inner",
				--     },
				--     selection_modes = {
				--         ['@parameter.outer'] = 'v',
				--         ['@function.outer'] = 'V',
				--         ['@function.inner'] = 'V',
				--     },
				--     include_surrounding_whitespace = false
				-- },
				move = {
					enable = true,
					set_jumps = true, -- whether to set jumps in the jumplist
					goto_next_start = {
						["]f"] = "@function.outer",
					},
					goto_next_end = {
						["]F"] = "@function.outer",
					},
					goto_previous_start = {
						["[f"] = "@function.outer",
					},
					goto_previous_end = {
						["[F"] = "@function.outer",
					},
				},
			},
		},
		config = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				---@type table<string, boolean>
				local added = {}
				opts.ensure_installed = vim.tbl_filter(function(lang)
					if added[lang] then
						return false
					end
					added[lang] = true
					return true
				end, opts.ensure_installed)
			end
			require("nvim-treesitter.configs").setup(opts)
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		dependencies = "nvim-treesitter/nvim-treesitter",
	},
}
