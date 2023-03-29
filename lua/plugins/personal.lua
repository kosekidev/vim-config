return {
  { "theprimeagen/harpoon" },
  {
    "mbbill/undotree",
    keys = {
      {
        "<leader>u",
        ":UndotreeShow<CR>",
        desc = "Open UndoTree",
      },
    },
  },
  { "wellle/targets.vim" },
  { "windwp/nvim-ts-autotag" },
  { "tpope/vim-surround" },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = 12,
      open_mapping = [[<c-\>]],
      close_on_exit = true,
    },
  },
}
