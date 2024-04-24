-- require("telescope").load_extension("projects")
-- require("cucumberjs").setup()
-- vim.lsp.set_log_level("debug")
require("lspconfig").cucumber_language_server.setup({
  cmd = { "cucumber-language-server", "--stdio" },
  filetypes = { "cucumber", "feature" },
  root_dir = require("lspconfig").util.root_pattern("package.json"),
  features = { "features/**/*.feature" },
  glue = {
    "step_definitions/**/*.ts",
  },
  settings = {
    features = { "features/**/*.feature" },
    glue = {
      "step_definitions/**/*.ts",
    },
  },
})
