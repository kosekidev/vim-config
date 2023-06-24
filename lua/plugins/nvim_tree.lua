return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    { "nvim-tree/nvim-web-devicons" }
  },
  config = function()
    require("nvim-tree").setup({

      sort_by = "case_sensitive",
      view = {
        width = 30,
        hide_root_folder = true,
      },
      renderer = {
        indent_width = 1,
        group_empty = true,
        icons = {
          glyphs = {
            git = {
              untracked = "⋄",
            }
          }
        }
      },
      filters = {
        dotfiles = true,
      },
    })
  end
}
