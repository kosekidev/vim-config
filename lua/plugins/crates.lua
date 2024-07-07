return {
	"saecki/crates.nvim",
	tag = "stable",
	event = { "BufRead Cargo.toml" },
	config = function()
		require("crates").setup({
			completion = {
				cmp = {
					enabled = true,
				},
			},
			lsp = {
				enabled = true,
				on_attach = function()
					local crates = require("crates")
					local opts = { silent = true }

					vim.keymap.set(
						"n",
						"<leader>cv",
						crates.show_versions_popup,
						{ silent = true, desc = "show crate's versions" }
					)
					vim.keymap.set(
						"n",
						"<leader>cf",
						crates.show_features_popup,
						{ silent = true, desc = "show crate's features" }
					)
					vim.keymap.set(
						"n",
						"<leader>cd",
						crates.show_dependencies_popup,
						{ silent = true, desc = "show crate's dependencies" }
					)

					vim.keymap.set("n", "<leader>cU", crates.upgrade_crate, { silent = true, desc = "upgrade crate" })
					vim.keymap.set("v", "<leader>cU", crates.upgrade_crates, { silent = true, desc = "upgrade crates" })

					vim.keymap.set(
						"n",
						"<leader>cx",
						crates.expand_plain_crate_to_inline_table,
						{ silent = true, desc = "expand plain crate to inline table" }
					)
					vim.keymap.set(
						"n",
						"<leader>cX",
						crates.extract_crate_into_table,
						{ silent = true, desc = "extract crate into table" }
					)

					vim.keymap.set("n", "<leader>cH", crates.open_homepage, { silent = true, desc = "open homepage" })
					vim.keymap.set(
						"n",
						"<leader>cR",
						crates.open_repository,
						{ silent = true, desc = "open repository" }
					)
					vim.keymap.set(
						"n",
						"<leader>cD",
						crates.open_documentation,
						{ silent = true, desc = "open documentation" }
					)
					vim.keymap.set("n", "<leader>cC", crates.open_crates_io, { silent = true, desc = "open crates.io" })
					vim.keymap.set("n", "<leader>cL", crates.open_lib_rs, { silent = true, desc = "open lib.rs" })
				end,
				actions = true,
				completion = true,
				hover = true,
			},
		})
	end,
}
