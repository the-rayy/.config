return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		branch = "main",
		config = function()
			require("nvim-treesitter").install { "rust", "python", "bash", "dockerfile", "markdown", "html", "wgsl", "go" }
      vim.api.nvim_create_autocmd("FileType", {
        callback = function(ev)
          local ok = pcall(vim.treesitter.start, ev.buf)
          if ok then
            vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
            vim.bo[ev.buf].indentexpr = "v:loa.require'nvim-treesitter'.indentexpr()"
          end
        end,
      })
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
