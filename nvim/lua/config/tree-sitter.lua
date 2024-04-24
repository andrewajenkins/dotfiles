require("lspconfig").cucumber_language_server.setup({
  flags = {
    -- Enable logging for the language server to a file
    log_level = vim.lsp.protocol.MessageType.Log,
    log_path = "~/logfile.log",
  },
})
require("nvim-treesitter").define_modules({
  playground = {
    module_path = "nvim-treesitter-playground",
    is_supported = function()
      return true
    end,
  },
})
require("treesitter-playground").setup({
  enable = true,
})
