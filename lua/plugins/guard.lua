return {
	"nvimdev/guard.nvim",
	config = function()
		local ft = require("guard.filetype")

		ft("typescript,javascript,typescriptreact,css,html,markdown,json,vue"):fmt("prettier")
		ft("rust"):fmt("rustfmt")
		ft("lua"):fmt("stylua")

		require("guard").setup({
			fmt_on_save = true,
			lsp_as_default_formatter = true,
		})
	end,
}
