return {
	"kosekidev/build-script",
	keys = {
		{ "<leader>pbs", "<cmd>silent :OpenBuildScripts<CR>", { desc = "Open project's build script quicklist" } },
		{
			"<leader>bs",
			function()
				require("build_script").open_quicklist(function(command)
					local tmux_cmd = 'silent !tmux split-window "' .. command .. '"'
					vim.cmd(tmux_cmd)
				end)
			end,
			{ desc = "Open project's build script quicklist and execute the command in a tmux pane" },
		},
	},
	opts = {
		executor_callback = function(command)
			local tmux_cmd = 'silent !tmux neww "' .. command .. '; exec zsh"'
			vim.cmd(tmux_cmd)
		end,
	},
}
