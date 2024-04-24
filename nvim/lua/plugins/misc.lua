return {
  { "ThePrimeagen/vim-be-good" },
  -- { "tpope/obsession.vim" },
  { "nvim-tree/nvim-web-devicons" },
  { "nvim-pack/nvim-spectre" },
  -- { "tpope/vim-cucumber" },
  {
    "stevearc/oil.nvim",
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  { "github/copilot.vim" },
  -- { "nvim-neotest/neotest" },
  -- {
  --   "ahmedkhalf/project.nvim",
  --   config = function()
  --     require("project_nvim").setup({
  --       patterns = { "package.json", ".git" },
  --       manual_mode = true,
  --     })
  --   end,
  -- },
  { "nvim-telescope/telescope-project.nvim" },
  { dir = "~/projects/cucumberjs", config = true }, -- { "folke/noice.nvim", enabled = false },
}
