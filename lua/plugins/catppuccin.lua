return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      integrations = {
        cmp = true,
        telescope = true,
        notify = true,
        mini = true,
        mason = true,
        neotest = true,
        noice = true,
        native_lsp = {
          enabled = true
        },
        treesitter = true,
      }
    })

    vim.cmd.colorscheme "catppuccin-mocha"
  end,
}
