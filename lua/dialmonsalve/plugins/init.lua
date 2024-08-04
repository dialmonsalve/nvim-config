return {
	"nvim-lua/plenary.nvim", --Lua functions that many plugins use

	"christoomey/vim-tmux-navigator", -- tmux and split window navigation

	-- ui components
	{ "MunifTanjim/nui.nvim", lazy = true },

	{
		"szw/vim-maximizer",
		keys = {
			{ "<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
		},
	},
}
