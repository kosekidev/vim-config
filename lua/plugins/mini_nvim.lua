return {
  "echasnovski/mini.nvim",
  dependencies = { "nvim-treesitter-textobjects" },
  version = false,
  config = function()
    require("mini.pairs").setup()
    require('mini.comment').setup()

    local ai = require("mini.ai")

    ai.setup({
      n_lines = 500,
      custom_textobjects = {
        o = ai.gen_spec.treesitter({
          a = { "@conditional.outer", "@loop.outer" },
          i = { "@conditional.inner", "@loop.inner" },
        }, {}),
        f = ai.gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }, {}),
        c = ai.gen_spec.treesitter({ a = "@class.outer", i = "@class.inner" }, {}),
        r = ai.gen_spec.treesitter({ a = "@return.outer", i = "@return.inner" }, {}),
      },
    })
  end,
}
