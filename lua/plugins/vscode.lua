return {
	"Mofiqul/vscode.nvim",
	priority = 1000,
	config = function()
		require("vscode").load()
	end,
}
