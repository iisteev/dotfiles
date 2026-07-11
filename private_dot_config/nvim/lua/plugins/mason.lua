return {
	{
		"mason-org/mason.nvim",
		opts = {
			ensure_installed = {
				"typos",
				"stylua",
				"shellcheck",
				"shfmt",
				"goimports",
			},
		},
	},
}
