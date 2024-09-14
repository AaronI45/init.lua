return{
	{
		"nvim-treesitter/nvim-treesitter",
		config = function()
			vim.cmd([[TSUpdate]])
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = {"c", "lua", "javascript", "html", "css", "typescript", "rust", "css"},
				sync_install = false,
				highlight = { enable = true },
				auto_install = true,
				indent = true,
			})
		end,
	},
	{
		"nvim-treesitter/playground"
	},
}
