return {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    opts = function()
        local nls = require("null-ls")
        return {
            root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".git", "Cargo.toml", "package.json"),
            sources = {
                nls.builtins.formatting.prettier.with({
                    extra_args = function(_)
                        if vim.fs.dirname(vim.fs.find({ ".prettierrc", ".prettierrc.js" }, { upward = true })[1]) then
                            return nil
                        end

                        return {}
                    end,
                }),
                nls.builtins.formatting.rustfmt,
            },
        }
    end,
}
