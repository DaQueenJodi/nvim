require("mappings")
require("options")
require("autocmd")
require("plugins")
require("lsp")
-- Default options:

vim.cmd('colorscheme edge')

require("nvim-treesitter.configs").setup({
	ensure_installed = { "bash", "c", "vim", "vimdoc", "lua", "zig", "nix" },
	highlight = { enable = true },
	indent = { enable = true },
	textobjects = { enable = true },
	rainbow = {
		enable = false,
		extended_mode = true
	}
})
