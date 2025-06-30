return {
	"Mofiqul/vscode.nvim",
	priority = 1000,
	config = function()
		require("vscode").setup({
			group_overrides = {
				DiagnosticUnnecessary = {
					fg = "#999999",
					italic = true,
				},
			},
		})

		require("vscode").load("light")
	end,
}
