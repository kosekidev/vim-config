return {
	cmd = { "tailwindcss-language-server", "--stdio" },
	filetypes = {
		"vue",
		"svelte",
		"html",
		"css",
		"scss",
	},
	root_markers = {
		"tailwind.config.js",
		"tailwind.config.cjs",
		"tailwind.config.mjs",
		"tailwind.config.ts",
		"postcss.config.js",
		"postcss.config.ts",
		"package.json",
		".git",
	},
	settings = {
		tailwindCSS = {
			emmetCompletions = true,
			validate = true,
			lint = {
				cssConflict = "warning",
				invalidApply = "error",
				invalidScreen = "error",
				invalidVariant = "error",
				invalidConfigPath = "error",
				invalidTailwindDirective = "error",
				recommendedVariantOrder = "warning",
			},
			classAttributes = { "class", "className", "classList", "ngClass", ":class" },
			experimental = {
				classRegex = {
					"tw`([^`]*)`",
					"tw\\(([^)]*)\\)",
					"@apply\\s+([^;]*)",
					'class="([^"]*)"',
					'className="([^"]*)"',
					':class="([^"]*)"',
				},
			},
		},
	},
	capabilities = vim.tbl_deep_extend("force", {}, vim.lsp.protocol.make_client_capabilities()),
}
