local fn = vim.fn
local lazypath = fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	'sainnhe/edge',
	'nvim-treesitter/nvim-treesitter',
	'neovim/nvim-lspconfig',
	{
		'ziglang/zig.vim',
		config = function()
			vim.g.zig_fmt_autosave = 0
		end
	},
	'LnL7/vim-nix',
	{ 
		'hrsh7th/nvim-cmp', dependencies = {
			'hrsh7th/cmp-nvim-lsp',
			'hrsh7th/cmp-nvim-lsp-signature-help',
			'hrsh7th/cmp-buffer',
			'L3MON4D3/LuaSnip'
		}
	},
	'vim-scripts/paredit.vim',
	'vlime/vlime'
})
