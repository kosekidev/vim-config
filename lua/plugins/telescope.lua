return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.1",
  dependencies = { "nvim-lua/plenary.nvim" },
  lazy = true,
  opts = {
    defaults = {
      layout_strategy = "horizontal",
      layout_config = { prompt_position = "top" },
      sorting_strategy = "ascending",
      winblend = 0,
    },
  },
  extensions = {
    file_browser = {
      theme = "catppuccin",
      hijack_netrw = true,
    }
  },
  init = function()
    require("telescope").load_extension "file_browser"
  end,
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<CR>",                    desc = "Find Files" },
    { "<leader>fg", "<cmd>Telescope live_grep<CR>",                     desc = "Grep" },
    { "<leader>,",  "<cmd>Telescope buffers show_all_buffers=true<cr>", desc = "Switch Buffer" },
    { "<leader>:",  "<cmd>Telescope command_history<cr>",               desc = "Command History" },
    -- find
    { "<leader>fb", "<cmd>Telescope buffers<cr>",                       desc = "Buffers" },
    { "<leader>fr", "<cmd>Telescope oldfiles<cr>",                      desc = "Recent" },
    -- search
    { "<leader>sd", "<cmd>Telescope diagnostics bufnr=0<cr>",           desc = "Document diagnostics" },
    { "<leader>sD", "<cmd>Telescope diagnostics<cr>",                   desc = "Workspace diagnostics" },
    { "<leader>sh", "<cmd>Telescope help_tags<cr>",                     desc = "Help Pages" },
    {
      "<leader>sH",
      "<cmd>Telescope highlights<cr>",
      desc = "Search Highlight Groups",
    },
    { "<leader>sk", "<cmd>Telescope keymaps<cr>",   desc = "Key Maps" },
    { "<leader>sM", "<cmd>Telescope man_pages<cr>", desc = "Man Pages" },
    { "<leader>sm", "<cmd>Telescope marks<cr>",     desc = "Jump to Mark" },
    {
      "<leader>ss",
      function()
        local builtin = require("telescope.builtin")

        builtin.lsp_document_symbols({
          symbols = {
            "Class",
            "Function",
            "Method",
            "Constructor",
            "Interface",
            "Module",
            "Struct",
            "Trait",
            "Field",
            "Property",
          },
        })
      end,
      desc = "Goto Symbol",
    },
    {
      "<leader>sS",
      function()
        local builtin = require("telescope.builtin")

        builtin.lsp_dynamic_workspace_symbols({
          symbols = {
            "Class",
            "Function",
            "Method",
            "Constructor",
            "Interface",
            "Module",
            "Struct",
            "Trait",
            "Field",
            "Property",
          },
        })
      end,
      desc = "Goto Symbol (Workspace)",
    },
  },
}
