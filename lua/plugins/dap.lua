return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			{
				"rcarriga/nvim-dap-ui",
				dependencies = { "nvim-neotest/nvim-nio" },
				keys = {
					{
						"<leader>du",
						function()
							require("dapui").toggle({})
						end,
						desc = "Dap UI",
					},
					{
						"<leader>de",
						function()
							require("dapui").eval()
						end,
						desc = "Eval",
						mode = { "n", "v" },
					},
				},
				opts = {},
				config = function(_, opts)
					local dap = require("dap")
					local dapui = require("dapui")
					dapui.setup(opts)

					dap.listeners.after.event_initialized["dapui_config"] = function()
						dapui.open({})
					end
					dap.listeners.before.event_terminated["dapui_config"] = function()
						dapui.close({})
					end
					dap.listeners.before.event_exited["dapui_config"] = function()
						dapui.close({})
					end
				end,
			},
			{
				"theHamsta/nvim-dap-virtual-text",
				opts = {},
			},
			{ "mxsdev/nvim-dap-vscode-js", requires = { "mfussenegger/nvim-dap" } },
		},

  -- stylua: ignore
  keys = {
    { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Breakpoint Condition" },
    { "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" },
    { "<leader>dc", function() require("dap").continue() end, desc = "Continue" },
    { "<leader>dC", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
    { "<leader>dg", function() require("dap").goto_() end, desc = "Go to Line (No Execute)" },
    { "<leader>di", function() require("dap").step_into() end, desc = "Step Into" },
    { "<leader>dj", function() require("dap").down() end, desc = "Down" },
    { "<leader>dk", function() require("dap").up() end, desc = "Up" },
    { "<leader>dl", function() require("dap").run_last() end, desc = "Run Last" },
    { "<leader>do", function() require("dap").step_out() end, desc = "Step Out" },
    { "<leader>dO", function() require("dap").step_over() end, desc = "Step Over" },
    { "<leader>dp", function() require("dap").pause() end, desc = "Pause" },
    { "<leader>dr", function() require("dap").repl.toggle() end, desc = "Toggle REPL" },
    { "<leader>ds", function() require("dap").session() end, desc = "Session" },
    { "<leader>dt", function() require("dap").terminate() end, desc = "Terminate" },
    { "<leader>dw", function() require("dap.ui.widgets").hover() end, desc = "Widgets" },
  },

		config = function()
			local icons = {
				Stopped = { "󰁕 ", "DiagnosticWarn", "DapStoppedLine" },
				Breakpoint = " ",
				BreakpointCondition = " ",
				BreakpointRejected = { " ", "DiagnosticError" },
				LogPoint = ".>",
			}

			vim.api.nvim_set_hl(0, "DapStoppedLine", { default = true, link = "Visual" })

			for name, sign in pairs(icons) do
				sign = type(sign) == "table" and sign or { sign }
				vim.fn.sign_define(
					"Dap" .. name,
					{ text = sign[1], texthl = sign[2] or "DiagnosticInfo", linehl = sign[3], numhl = sign[3] }
				)
			end

			local dap = require("dap")

			require("dap-vscode-js").setup({
				node_path = "node",
				debugger_path = os.getenv("HOME") .. "/.dap-nvim/js-debug-adapter",
				adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
			})

			for _, language in ipairs({ "typescript", "javascript", "typescriptreact", "javascriptreact", "vue" }) do
				if not dap.configurations[language] then
					dap.configurations[language] = {
						{
							type = "pwa-node",
							request = "launch",
							name = "Launch current file (pwa-node)",
							args = "${file}",
							cwd = "${workspaceFolder}",
							sourceMaps = true,
							protocol = "inspector",
						},
						{
							type = "pwa-node",
							request = "launch",
							name = "Launch Current File (pwa-node with ts-node)",
							cwd = "${workspaceFolder}",
							runtimeArgs = { "--loader", "ts-node/esm" },
							runtimeExecutable = "node",
							args = { "${file}" },
							sourceMaps = true,
							protocol = "inspector",
							skipFiles = { "<node_internals>/**", "node_modules/**" },
							resolveSourceMapLocations = {
								"${workspaceFolder}/**",
								"!**/node_modules/**",
							},
						},
						{
							type = "pwa-node",
							request = "launch",
							name = "Launch Current File (pwa-node with deno)",
							cwd = "${workspaceFolder}",
							runtimeArgs = { "run", "--inspect-brk", "--allow-all", "${file}" },
							runtimeExecutable = "deno",
							attachSimplePort = 9229,
						},
						{
							type = "pwa-node",
							request = "launch",
							name = "Launch Test Current File (pwa-node with jest)",
							cwd = "${workspaceFolder}",
							runtimeArgs = { "${workspaceFolder}/node_modules/.bin/jest" },
							runtimeExecutable = "node",
							args = { "${file}", "--coverage", "false" },
							rootPath = "${workspaceFolder}",
							sourceMaps = true,
							console = "integratedTerminal",
							internalConsoleOptions = "neverOpen",
							skipFiles = { "<node_internals>/**", "node_modules/**" },
						},
						{
							type = "pwa-node",
							request = "launch",
							name = "Launch Test Current File (pwa-node with vitest)",
							cwd = "${workspaceFolder}",
							program = "${workspaceFolder}/node_modules/vitest/vitest.mjs",
							args = { "--inspect-brk", "--threads", "false", "run", "${file}" },
							autoAttachChildProcesses = true,
							smartStep = true,
							console = "integratedTerminal",
							skipFiles = { "<node_internals>/**", "node_modules/**" },
						},
						{
							type = "pwa-node",
							request = "launch",
							name = "Launch Test Current File (pwa-node with deno)",
							cwd = "${workspaceFolder}",
							runtimeArgs = { "test", "--inspect-brk", "--allow-all", "${file}" },
							runtimeExecutable = "deno",
							smartStep = true,
							console = "integratedTerminal",
							attachSimplePort = 9229,
						},
						{
							type = "pwa-chrome",
							host = "127.0.0.1",
							request = "attach",
							name = "Attach Program (pwa-chrome, select port)",
							program = "${file}",
							cwd = "${workspaceFolder}",
							sourceMaps = true,
							port = function()
								return vim.fn.input("Select port: ", 9229)
							end,
							webRoot = "${workspaceFolder}",
						},
						{
							type = "pwa-node",
							request = "attach",
							name = "Attach",
							cwd = "${workspaceFolder}",
						},
					}
				end
			end
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "nvim-neotest/nvim-nio" },
		keys = {
			{
				"<leader>du",
				function()
					require("dapui").toggle({})
				end,
				desc = "Dap UI",
			},
			{
				"<leader>de",
				function()
					require("dapui").eval()
				end,
				desc = "Eval",
				mode = { "n", "v" },
			},
		},
		opts = {},
		config = function(_, opts)
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup(opts)
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open({})
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close({})
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close({})
			end
		end,
	},
}
