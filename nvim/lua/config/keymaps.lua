-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Add a keymap for just opening telescope
vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>Telescope<cr>", { noremap = true, silent = true })
-- Add a which-key description for <leader>t and set it to nop
local wk = require("which-key")

vim.api.nvim_set_keymap(
  "n",
  "<leader><leader>",
  ":lua require('telescope.builtin').find_files({ search_dirs = { '~/.config/nvim', '~/code/prancer/e2e_tests', '~/projects', '~code/prancer/', '~/code/scripts' } })<CR>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>tg",
  ":lua require('telescope.builtin').live_grep({ search_dirs = { '~/.config/nvim', '~/code/prancer/e2e_tests', '~/projects', '~code/prancer/' } })<CR>",
  { noremap = true, silent = true }
)

wk.register({
  ["<leader>"] = {
    t = { "<nop>", "Telescope" },
    tt = { "<cmd>Telescope<cr>", "Telescope" },
    tk = { "<cmd>Telescope keymaps<cr>", "Keymaps" },
    tj = { "<cmd>Telescope jumplist<cr>", "Jumplist" },
    tb = { "<cmd>Telescope buffers<cr>", "Buffers" },
    tf = { "<cmd>Telescope find_files<cr>", "Find Files" },
    -- tg = { "<cmd>Telescope live_grep<cr>", "Live Grep" },
    th = { "<cmd>Telescope help_tags<cr>", "Help Tags" },
    tp = { ":lua require'telescope'.extensions.project.project{}<CR>", "Projects" },
    cs = { "<cmd>copilot#suggest()<cr>", "Copilot Suggest" },
    cp = { "<cmd>copilot#next()<cr>", "Copilot Next" },
    cn = { "<cmd>copilot#prev()<cr>", "Copilot Prev" },
    co = { "<cmd>copilot#accept()<cr>", "Copilot Accept/Ok" },
    cO = { "<cmd>copilot#cancel()<cr>", "Copilot Cancel/Not Ok" },
    cC = { "<cmd>copilot#clear()<cr>", "Copilot Clear" },
    m = {
      name = "Messages",
      c = { ":messages clear<CR>", "Messages clear" },
      m = { ":message<CR>", "Messages" },
    },
    k = {
      name = "CucumberJS",
      k = { ":CucumberJS<CR>", "Cucumber Hello World" },
      r = { ":CucumberRead<CR>", "Cucumber StepDefs" },
    },
  },
})

vim.keymap.set("i", "<C-j>", "<Plug>(copilot-next)")
vim.keymap.set("i", "<C-k>", "<Plug>(copilot-prev)")
vim.keymap.set("i", "<C-l>", "<Plug>(copilot-accept)")
vim.keymap.set("i", "<C-h>", "<Plug>(copilot-cancel)")
vim.keymap.set("n", ":lua require'cucumberjs'.run()<CR>", "<leader>tc", { noremap = true, silent = true })
