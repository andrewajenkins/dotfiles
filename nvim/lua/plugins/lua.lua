local dap = require("dap")
dap.configurations.lua = {
  {
    type = "nlua",
    request = "attach",
    name = "Attach to running Neovim instance",
  },
}

dap.adapters.nlua = function(callback, config)
  callback({ type = "server", host = config.host or "127.0.0.1", port = config.port or 8086 })
end
vim.api.nvim_set_keymap("n", "<leader>ia", [[:lua require"dap".toggle_breakpoint()<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ia", [[:lua require"dap".continue()<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ic", [[:lua require"dap".step_over()<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>id", [[:lua require"dap".step_into()<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>ie", [[:lua require"dap.ui.widgets".hover()<CR>]], { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>if", [[:lua require"osv".launch({port = 8086})<CR>]], { noremap = true })
