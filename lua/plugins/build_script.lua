return {
	"KosekiDev/build_script",
	keys = {
		{ "<leader>bs", "<cmd>silent :OpenBuildScripts<CR>", { desc = "Open project's build script quicklist" } },
	},
	opts = {
		executor_callback = function(command)
			local tmux_cmd = 'silent !tmux neww "' .. command .. '"'
			vim.cmd(tmux_cmd)
		end,
	},
}
