local opts = vim.opt;

opts.tabstop = 2;
opts.shiftwidth = 2;
opts.softtabstop = 2;

-- Languages
opts.termguicolors = true;
vim.cmd("colorscheme catppuccin")
vim.cmd("set number")

local optz = { remap = false, silent = true } 
vim.keymap.set("i", "(", "()<Left>", optz)
vim.keymap.set("i", "[", "[]<Left>", optz)
vim.keymap.set("i", "{", "{}<Left>", optz)
vim.keymap.set("i", "'", "''<Left>", optz)

-- plugins
--

vim.pack.add{
	{ 
		src = 'https://github.com/nvim-telescope/telescope.nvim', 
		{
			file_ignore_patterns = { "node_modules", ".git/" }, 
		}
	},
	{ src = 'https://github.com/MunifTanjim/nui.nvim'},
	{ src = 'https://github.com/nvim-lua/plenary.nvim'},
	 "https://github.com/nvim-tree/nvim-web-devicons",
	 "https://github.com/nvim-neo-tree/neo-tree.nvim",
	 "https://github.com/mason-org/mason-lspconfig.nvim",
	 "https://github.com/mason-org/mason.nvim",
}



require("mason-lspconfig").setup{
	automatic_enable = true,
}








