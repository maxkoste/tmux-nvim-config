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
	-- {
	--   "sainnhe/gruvbox-material",
	--   lazy = false,        -- load immediately
	--   priority = 1000,     -- load before other UI plugins
	--   config = function()
	--     -- Required for correct colors
	--     vim.o.termguicolors = true
	--     vim.o.background = "dark" -- or "light"
	--
	--     -- Gruvbox Material options (must be set BEFORE colorscheme)
	--     vim.g.gruvbox_material_background = "medium"      -- hard | medium | soft
	--     vim.g.gruvbox_material_foreground = "mix"  -- material | mix | original
	--     vim.g.gruvbox_material_enable_italic = 1
	--     vim.g.gruvbox_material_disable_italic_comment = 0
	--     vim.g.gruvbox_material_better_performance = 1
	--
	--     -- Apply colorscheme
	--     vim.cmd.colorscheme("gruvbox-material")
	--   end,
	-- },
	{
		"vague-theme/vague.nvim",
		lazy = false, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other plugins
		config = function()
			vim.cmd("colorscheme vague")
		end
	},
	-- {
	-- 	"loctvl842/monokai-pro.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	opts = {
	-- 		transparent_background = true,
	-- 		filter = "pro",
	-- 	},
	-- 	config = function()
	-- 		require("monokai-pro").setup()
	-- 		vim.cmd.colorscheme("monokai-pro")
	-- 	end,
	-- },
	-- {
	-- 	"LazyVim/LazyVim",
	-- 	opts = {
	-- 		colorscheme = "vague",
	-- 	},
	-- },
}
