return {
  { "KosekiDev/build_script" },
  {
    "Mofiqul/vscode.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.api.nvim_set_hl(0, "@constant", { fg = "#4fc1ff", bg = "NONE" })
      vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#4EC9B0", bg = "NONE" })
      vim.cmd([[colorscheme vscode]])
    end,
  },
}
