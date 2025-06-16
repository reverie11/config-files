local plugins = {
	{
		"christoomey/vim-tmux-navigator", 
		lazy = false,
	},
	{
		"williamboman/mason.nvim", 
		opts = {
				ensure_installed = { },
		},
		{
			"neovim/nvim-lspconfig", 
			config = function()
				require "plugins.configs.lspconfig"
				require "custom.configs.lspconfig"
			end,
		},
	},
}

return plugins
