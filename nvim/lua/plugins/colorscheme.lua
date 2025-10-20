return {
  { "shaunsingh/nord.nvim" },
  {
    "EdenEast/nightfox.nvim",
    opts = {
      overrides = {
        transparent = true,
      },
    },
  },
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      overrides = {
        -- CursorLine = { bg = "#1d3836" }, -- change this to the color you like
      },
    },
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
