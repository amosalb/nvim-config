return {
	{
		"lewis6991/gitsigns.nvim",
	},

	{
		"tpope/vim-fugitive",
		cmd = { "G", "Git", "Gdiffsplit", "Gvdiffsplit", "Gstatus" },
		keys = {
			{ "<leader>gs", "<cmd>Git<cr>", desc = "Git Status" },
		},
	},
}
