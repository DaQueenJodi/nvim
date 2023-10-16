-- highlight text after yank
vim.api.nvim_create_autocmd('TextYankPost', {
	group = vim.api.nvim_create_augroup('highlight_yank', {}),
	desc = 'Highlight selection on yank',
	callback = function()
		vim.highlight.on_yank { higroup = "IncSearch", timeout = 100 }
	end
})

vim.api.nvim_create_autocmd('BufEnter', {
	pattern = "*.hs",
	callback = function()
		vim.opt.expandtab = true;
	end
})


vim.api.nvim_create_autocmd('TermOpen', {
  callback = function()
    vim.opt.relativenumber = false;
    vim.opt.number = false;
  end
})
