return {
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"bashls",
				"pyright",
				"ruff",
				"stylua",
			},
		},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			{
				"neovim/nvim-lspconfig",
				config = function()
					-- Show diagnostics under the cursor when holding position
					vim.api.nvim_create_autocmd("CursorHold", {
						callback = function()
							vim.diagnostic.open_float(nil, { focus = false })
						end,
					})

					-- Decrease update time from default 4000ms to 300ms for a faster response
					vim.o.updatetime = 300
				end,
			},
		},
	},
}
