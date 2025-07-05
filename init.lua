require("config")
require("core.lazy")
require("core.lsp")

require("neotest").setup({
	adapters = {
		require("rustaceanvim.neotest"),
	},
})
