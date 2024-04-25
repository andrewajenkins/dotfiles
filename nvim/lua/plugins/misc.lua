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
  { "nvim-telescope/telescope-project.nvim" },
  { dir = "~/projects/cucumberjs", config = true }, -- { "folke/noice.nvim", enabled = false },
  { "sheerun/vim-polyglot" },
  { "sindrets/diffview.nvim" },
}
