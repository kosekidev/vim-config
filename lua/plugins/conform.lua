return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },

			html = { "prettier" },
			css = { "prettier" },
			json = { "prettier" },
			markdown = { "prettier" },

			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			typescript = { "prettier" },
			typescriptreact = { "prettier" },
		},
		format_on_save = {
			lsp_fallback = true,
			timeout_ms = 500,
			async = false,
		},
		log_level = vim.log.levels.ERROR,
		notify_on_error = true,
	},
}
