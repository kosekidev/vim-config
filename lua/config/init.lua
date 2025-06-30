require("config.options")
require("config.remap")

-- Show light theme automatically during the day
local current_time = os.date("*t")
if current_time.hour >= 9 and current_time.hour <= 20 then
	vim.api.nvim_set_option("background", "light")
end

vim.lsp.enable("vue_ls")
vim.lsp.enable("ts_ls")
vim.lsp.config("ts_ls", {
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vim.fn.stdpath("data")
					.. "/mason/packages/vue-language-server/node_modules/@vue/language-server/node_modles/@vue/typescript-plugin",
				languages = { "typescript", "javascript", "vue" },
			},
		},
	},
	filetypes = {
		"vue",
		"javascript",
		"javascript.jsx",
		"typescript",
		"typescript.tsx",
		"javascriptreact",
		"typescriptreact",
		"json",
	},
})
vim.lsp.enable("lua_ls")
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})
vim.lsp.enable("jsonls")
vim.lsp.enable("html")
vim.lsp.enable("cssls")
vim.lsp.enable("eslint")
