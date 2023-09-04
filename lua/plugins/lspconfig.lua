return {
	"VonHeikemen/lsp-zero.nvim",
	branch = "v2.x",
	dependencies = {
		{ "neovim/nvim-lspconfig" },
		{
			"williamboman/mason.nvim",
			build = ":MasonUpdate",
			init = function()
				vim.keymap.set("n", "<leader>cm", ":Mason<CR>", {
					silent = true,
					desc = "Open Mason manager",
				})
			end,
		},
		{ "williamboman/mason-lspconfig.nvim" },
		{ "hrsh7th/nvim-cmp" },
		{ "hrsh7th/cmp-nvim-lsp" },
		{
			"L3MON4D3/LuaSnip",
			dependencies = { "rafamadriz/friendly-snippets" },
			config = function()
				require("luasnip.loaders.from_vscode").lazy_load()
			end,
		},
		{ "hrsh7th/cmp-path" },
		{ "hrsh7th/cmp-buffer" },
		{ "saadparwaiz1/cmp_luasnip" },
		{ "rafamadriz/friendly-snippets" },
	},
	init = function()
		local lsp = require("lsp-zero").preset({})

		lsp.on_attach(function(_, bufnr)
			local build_opts = function(keymap_desc)
				return { buffer = bufnr, remap = false, desc = keymap_desc }
			end

			vim.keymap.set("n", "<leader>vd", function()
				vim.diagnostic.open_float()
			end, build_opts("Open float inline diagnostic"))
			vim.keymap.set("n", "<leader>ca", function()
				vim.lsp.buf.code_action()
			end, build_opts("Code action"))
			vim.keymap.set("n", "<leader>cr", function()
				vim.lsp.buf.rename()
			end, build_opts("Rename"))
			vim.keymap.set({ "n", "v" }, "<leader>cf", function()
				vim.lsp.buf.format()
			end, build_opts("Format"))

			vim.keymap.set("n", "]d", function()
				vim.diagnostic.goto_next()
			end, build_opts("Go to next diagnostic"))
			vim.keymap.set("n", "[d", function()
				vim.diagnostic.goto_prev()
			end, build_opts("Go to previous diagnostic"))
			vim.keymap.set("n", "]w", function()
				vim.diagnostic.goto_next({
					severity = "WARN",
				})
			end, build_opts("Go to next warning"))
			vim.keymap.set("n", "[w", function()
				vim.diagnostic.goto_prev({
					severity = "WARN",
				})
			end, build_opts("Go to next error"))
			vim.keymap.set("n", "]e", function()
				vim.diagnostic.goto_next({
					severity = "ERROR",
				})
			end, build_opts("Go to previous error"))
			vim.keymap.set("n", "[e", function()
				vim.diagnostic.goto_prev({
					severity = "ERROR",
				})
			end, build_opts("Go to previous diagnostic"))

			vim.keymap.set("n", "gd", function()
				vim.lsp.buf.definition()
			end, build_opts("Go to definition"))
			vim.keymap.set("n", "gr", function()
				vim.lsp.buf.references()
			end, build_opts("Go to references"))
			vim.keymap.set("n", "K", function()
				vim.lsp.buf.hover()
			end, build_opts("Hover"))
			vim.keymap.set("n", "gK", function()
				vim.lsp.buf.signature_help()
			end, build_opts("Signature help"))
		end)

		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup(lsp.nvim_lua_ls())
		lsp.setup()

		local luasnip = require("luasnip")
		local cmp = require("cmp")
		local cmp_action = require("lsp-zero").cmp_action()

		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			sources = {
				{ name = "path" },
				{ name = "nvim_lsp" },
				{ name = "buffer", keyword_length = 3 },
				{ name = "luasnip", keyword_length = 2 },
			},
			mapping = {
				["<C-f>"] = cmp_action.luasnip_jump_forward(),
				["<C-b>"] = cmp_action.luasnip_jump_backward(),
				["<Tab>"] = cmp.mapping(function(fallback)
					if luasnip.expand_or_jumpable() then
						luasnip.expand_or_jump()
					else
						fallback()
					end
				end, { "i" }),
			},
		})
	end,
}
