return {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = true,
    init = function()
	    local builtin = require('telescope.builtin')
	    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
	    vim.keymap.set('n', '<leader>g', builtin.git_files, {})
	    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
	    vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
	    vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
    end
}
