return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")

		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
		lspconfig.jsonls.setup({})
		lspconfig.html.setup({})
		lspconfig.cssls.setup({})
		lspconfig.rust_analyzer.setup({})

		local current_path = vim.fn.expand("%:p:h")
		local util = require("lspconfig.util")
		local project_root = util.find_node_modules_ancestor(current_path)

		local vue_path = util.path.join(project_root, "node_modules", "vue")
		local is_vue = vim.fn.isdirectory(vue_path) == 1
		if is_vue then
			lspconfig.volar.setup({
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
			lspconfig.tsserver.setup({
				autostart = false,
				root_dir = function()
					return false
				end,
				single_file_support = false,
			})
		else
			lspconfig.tsserver.setup({})
		end

		vim.keymap.set("n", "<space>vd", vim.diagnostic.open_float, { desc = "Open float inline diagnostic" })
		vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic" })
		vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diognostic" })
		vim.keymap.set("n", "[w", function()
			vim.diagnostic.goto_prev({
				severity = "WARN",
			})
		end, { desc = "Go to next warning" })
		vim.keymap.set("n", "]w", function()
			vim.diagnostic.goto_next({
				severity = "WARN",
			})
		end, { desc = "Go to next warning" })
		vim.keymap.set("n", "[e", function()
			vim.diagnostic.goto_prev({
				severity = "ERROR",
			})
		end, { desc = "Go to previous error" })
		vim.keymap.set("n", "]e", function()
			vim.diagnostic.goto_next({
				severity = "ERROR",
			})
		end, { desc = "Go to next error" })

		vim.api.nvim_create_autocmd("LspAttach", {
			group = vim.api.nvim_create_augroup("UserLspConfig", {}),
			callback = function(ev)
				local build_opts = function(keymap_desc)
					return { buffer = ev.buf, remap = false, desc = keymap_desc }
				end

				vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

				vim.keymap.set("n", "gD", vim.lsp.buf.declaration, build_opts("Go to declaration"))
				vim.keymap.set("n", "gd", vim.lsp.buf.definition, build_opts("Go to definition"))
				vim.keymap.set("n", "gr", vim.lsp.buf.references, build_opts("Go to references"))
				vim.keymap.set("n", "gK", vim.lsp.buf.signature_help, build_opts("Signature help"))
				vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, build_opts("Signature help"))
				vim.keymap.set("n", "K", vim.lsp.buf.hover, build_opts("Hover"))
				vim.keymap.set("n", "<space>cr", vim.lsp.buf.rename, build_opts("Rename"))
				vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, build_opts("Code action"))
			end,
		})
	end,
}
