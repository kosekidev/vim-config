-- since this is just an example spec, don't actually load anything here and return an empty spec
-- stylua: ignore
-- if true then return {} end

-- every spec file under config.plugins will be loaded automatically by lazy.nvim
--
-- In your plugin files, you can:
-- * add extra plugins
-- * disable/enabled LazyVim plugins
-- * override the configuration of LazyVim plugins

return {
  {
    "Mofiqul/vscode.nvim", config = function()
      require('vscode').setup({})
      vim.api.nvim_set_hl(0, '@constant', { fg = "#4fc1ff", bg = 'NONE' })
      vim.api.nvim_set_hl(0, '@type.builtin', { fg = "#4EC9B0", bg = 'NONE' })
    end
  },
  -- Configure LazyVim to load vscode
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "vscode",
    },
  },

  -- To remove command-line overlay
  {
  "folke/noice.nvim",
    opts = {
      cmdline= {
        view = "cmdline"
      }
    }
  },

  -- Git manager
  { "tpope/vim-fugitive" },

  -- Disable some useless plugins
  { "goolord/alpha-nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  { "echasnovski/mini.ai", enabled = false },
  { "folke/persistence.nvim", enabled = false },
  { "SmiteshP/nvim-navic", enabled = false },
  { "ggandor/leap.nvim", enabled = false },
  { "catppuccin/nvim", enabled = false },
  { "folke/tokyonight.nvim", enabled = false },
  { "echasnovski/mini.surround", enabled = false },
  { "echasnovski/mini.bufremove", enabled = false },
  { "ggandor/flit.nvim", enabled = false },
  { "folke/which-key.nvim", enabled = false },

  -- change trouble config
  {
    "folke/trouble.nvim",
    -- opts will be merged with the parent spec
    opts = { use_diagnostic_signs = true },
  },

  -- override nvim-cmp
  { "hrsh7th/nvim-cmp" },

  -- change some telescope options and a keymap to browse plugin files
  {
    "nvim-telescope/telescope.nvim",
    dependencies = {{'nvim-lua/plenary.nvim'}},
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
  -- add telescipe-fzf-native
  {
    "telescope.nvim",
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
      config = function()
        require("telescope").load_extension("fzf")
      end,
    },
  },

  { "neovim/nvim-lspconfig", },
  { "b0o/SchemaStore.nvim", enabled = false },

  -- for typescript, LazyVim also includes extra specs to properly setup lspconfig,
  -- treesitter, mason and typescript.nvim. So instead of the above, you can use:
  -- { import = "lazyvim.plugins.extras.lang.typescript" },
  -- add jsonls and schemastore ans setup treesitter for json, json5 and jsonc
  -- { import = "lazyvim.plugins.extras.lang.json" },


  -- add more treesitter parsers
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "help",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "query",
        "regex",
        "tsx",
        "typescript",
      },
      autotag = {
        enable = true
      }
    },
  },

  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      return {
        --[[add your custom lualine config here]]
      }
    end,
  },
  -- add any tools you want to have installed below
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
      },
    },
  }
}
