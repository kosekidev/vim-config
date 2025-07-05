return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".stylua.toml",
		"stylua.toml",
		".git",
	},
	settings = {
		Lua = {
			diagnostics = {
				disable = { "missing-fields" },
				globals = {
					"vim",
					"Snacks",
				},
			},
			hint = {
				enable = true,
				setType = false,
				paramType = true,
				paramName = "Disable",
				semicolon = "Disable",
				arrayIndex = "Disable",
			},
		},
	},
	capabilities = vim.tbl_deep_extend("force", {}, vim.lsp.protocol.make_client_capabilities(), {
		fileOperations = {
			didRename = true,
			willRename = true,
		},
	}),
}
