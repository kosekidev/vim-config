return {
  "sbdchd/neoformat",
  config = function()
    vim.api.nvim_create_autocmd({ "BufWritePre" }, {
      pattern = { "*.js", "*.ts", "*.tsx", "*.css", "*.html", "*.vue", "*.json", "*.md" },
      command = "Neoformat",
    })
  end
}
