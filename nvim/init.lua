-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require("lspconfig").cucumber_language_server.setup({
  cmd = {
    "/Users/ajenkins@4gclinical.com/code/plugins/language-server/bin/cucumber-language-server.cjs",
    "--stdio",
  },
  filetypes = { "cucumber", "feature" },
  root_dir = require("lspconfig").util.root_pattern("package.json"),
  -- features = { "features/**/*.feature" },
  -- glue = {
  -- "step_definitions/**/*.ts",
  -- },
  -- settings = {
  --   features = { "/Users/ajenkins@4gclinical.com/code/prancer/e2e_tests/features/**/*.feature" },
  --   glue = {
  --     "/Users/ajenkins@4gclinical.com/code/prancer/e2e_tests/step_definitions/**/*.ts",
  --   },
  -- },
})
