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
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },
  { "nvim-telescope/telescope-project.nvim" },
  { dir = "~/projects/cucumberjs", config = true }, -- { "folke/noice.nvim", enabled = false },
  { "sheerun/vim-polyglot" },
}
