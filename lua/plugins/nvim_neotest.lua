return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "antoinemadec/FixCursorHold.nvim",
      "haydenmeade/neotest-jest",
      "rouge8/neotest-rust",
    },
    lazy = true,
    config = function()
      require("neotest").setup({
        quickfix = {
          enabled = true,
          open = false
        },
        adapters = {
          require("neotest-jest")({
            jestCommand = "npm test --",
            -- jestConfigFile = "custom.jest.config.ts",
            env = { CI = true },
            cwd = function(_)
              return vim.fn.getcwd()
            end,
          }),
          require("neotest-rust"),
        },
      })

      vim.keymap.set("n", "<leader>tnr", function()
        require("neotest").run.run()
      end)
      vim.keymap.set("n", "<leader>tfr", function()
        require("neotest").run.run(vim.fn.expand("%"))
      end)
      vim.keymap.set("n", "<leader>ts", function()
        require("neotest").run.stop()
      end)
      vim.keymap.set("n", "<leader>to", function()
        require("neotest").output.open({ enter = false, short = true })
      end)
      vim.keymap.set("n", "<leader>ta", function()
        require("neotest").run.attach()
      end)
    end,
    keys = {
      { "<leader>tv", function()
        require("neotest").summary.toggle()
      end }
    }
  },
}
