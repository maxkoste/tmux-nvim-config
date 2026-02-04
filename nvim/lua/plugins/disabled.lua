return {
	--Disable tabs
	{ "akinsho/bufferline.nvim", enabled = false },
	-- disable pop up
	{
		"neovim/nvim-lspconfig",
		opts = function(_, opts)
			opts.servers = opts.servers or {}
			opts.servers.copilot = false
		end,
	},
}
