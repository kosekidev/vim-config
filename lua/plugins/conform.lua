return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },

			html = { { "prettierd", "prettier" } },
			css = { { "prettierd", "prettier" } },
			json = { { "prettierd", "prettier" } },
			markdown = { { "prettierd", "prettier" } },

			javascript = { { "prettierd", "prettier" } },
			javascriptreact = { { "prettierd", "prettier" } },
			typescript = { { "prettierd", "prettier" } },
			typescriptreact = { { "prettierd", "prettier" } },
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
