return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				rust = { "rustfmt", lsp_format = "fallback" },
				ruby = { "rubocop" },
			},
			format_on_save = {
				timeout_ms = 200,
				lsp_format = "fallback",
			},
		})

		vim.api.nvim_create_autocmd("BufWritePre", {
			pattern = "*",
			callback = function(args)
				require("conform").format({ bufnr = args.buf })
			end,
		})
	end,
}
