return 
{
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		dependencies = { 'nvim-lua/plenary.nvim' },
		keys = 
		{
			{
				"<leader>pf",
				function()
					require("telescope.builtin").find_files({
						no_ignore = false,
						hidden = true,
					})
				end,
			}, 
			{
				"<C-p>",
				function()
					require("telescope.buildin").git_files({})
				end,
			},
			{
				"<leader>ps",
				function()
					require("telescope.builtin").live_grep({})
				end,
			},
		},
	},
}
