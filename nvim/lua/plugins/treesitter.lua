return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		branch = "main",
		config = function()
			require("nvim-treesitter").install { "rust", "python", "bash", "dockerfile", "markdown", "html", "wgsl", "go" }
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		requires = {
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			local treesitter = require("treesitter-context")
			treesitter.setup({
				enable = true,
				max_lines = 5,
				line_numbers = true,
				trim_scope = "outer",
				mode = "topline",
				separator = "-",
			})
		end,
	},
}
