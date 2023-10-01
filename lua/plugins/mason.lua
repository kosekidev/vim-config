return {
  {
    "williamboman/mason.nvim",
    init = function()
      vim.keymap.set("n", "<leader>cm", ":Mason<CR>", {
        silent = true,
        desc = "Open Mason manager",
      })
    end,
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup()
    end
  }
}
