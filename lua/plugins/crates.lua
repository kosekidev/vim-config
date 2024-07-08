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
        -- stylua: ignore
				on_attach = function(_, bufnr)
					local crates = require("crates")

          local bind = function(mode, keymap, action, desc)
            vim.keymap.set(mode, keymap, action, { silent = true, buffer = bufnr, desc = desc })
          end

					bind("n", "<leader>cv", crates.show_versions_popup,                "show crate's versions")
					bind("n", "<leader>cf", crates.show_features_popup,                "show crate's features")
					bind("n", "<leader>cd", crates.show_dependencies_popup,            "show crate's dependencies")
					bind("n", "<leader>cU", crates.upgrade_crate,                      "upgrade crate")
					bind("v", "<leader>cU", crates.upgrade_crates,                     "upgrade crates")
					bind("n", "<leader>cx", crates.expand_plain_crate_to_inline_table, "expand plain crate to inline table")
					bind("n", "<leader>cX", crates.extract_crate_into_table,           "extract crate into table")
          bind("n", "<leader>cH", crates.open_homepage,                      "open homepage")
					bind("n", "<leader>cR", crates.open_repository,                    "open repository")
					bind("n", "<leader>cD", crates.open_documentation,                 "open documentation")
					bind("n", "<leader>cC", crates.open_crates_io,                     "open crates.io")
					bind("n", "<leader>cL", crates.open_lib_rs,                        "open lib.rs")
				end,
				actions = true,
				completion = true,
				hover = true,
			},
		})
	end,
}
