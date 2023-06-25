local neotest_extension = {
  sections = {
    lualine_a = {
      function()
        return 'NeoTest'
      end
    }
  },
  filetypes = {
    'neotest-summary'
  }
}

return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  opts = {
    theme = "catppuccin",
    extensions = { neotest_extension }
  }
}
