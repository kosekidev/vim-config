return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      no_italic = true,
      integrations = {
        cmp = true,
        telescope = true,
        notify = true,
        mini = true,
        mason = true,
        noice = true,
        native_lsp = {
          enabled = true
        },
        nvimtree = true,
        treesitter = true,
      }
    })

    vim.cmd.colorscheme "catppuccin-mocha"
  end,
}
