return {
  -- {
  --   "EdenEast/nightfox.nvim",
  --   opts = {
  --     overrides = {
  --       transparent = true,
  --     },
  --   },
  -- },
  -- {
  --   "neanias/everforest-nvim",
  --   lazy = false,
  --   priority = 1000,
  -- },
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   opts = {
  --     overrides = {
  --       -- CursorLine = { bg = "#1d3836" }, -- change this to the color you like
  --     },
  --   },
  -- },
  -- { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  {
    "sainnhe/gruvbox-material",
    lazy = false,        -- load immediately
    priority = 1000,     -- load before other UI plugins
    config = function()
      -- Required for correct colors
      vim.o.termguicolors = true
      vim.o.background = "dark" -- or "light"

      -- Gruvbox Material options (must be set BEFORE colorscheme)
      vim.g.gruvbox_material_background = "medium"      -- hard | medium | soft
      vim.g.gruvbox_material_foreground = "mix"  -- material | mix | original
      vim.g.gruvbox_material_enable_italic = 1
      vim.g.gruvbox_material_disable_italic_comment = 0
      vim.g.gruvbox_material_better_performance = 1

      -- Apply colorscheme
      vim.cmd.colorscheme("gruvbox-material")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox-material",
    },
  },
}
