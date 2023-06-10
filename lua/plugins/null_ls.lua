return {
	"jose-elias-alvarez/null-ls.nvim",
	event = { "BufReadPre", "BufNewFile" },
	dependencies = { "mason.nvim" },
	opts = function()
		local nls = require("null-ls")
		return {
			root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".git", "Cargo.toml", "package.json"),
			sources = {
				nls.builtins.formatting.stylua,
			},
		}
	end,
}
