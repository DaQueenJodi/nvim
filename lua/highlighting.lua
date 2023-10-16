for _,lang in pairs(langs) do
	vim.cmd("SyntaxRange#Include('@begin=c@', '@end=c@', 'c', 'NonText')")
done
