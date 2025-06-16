vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars:append "eol:↴"
vim.cmd [[highlight IndentBlanklineContextChar1 guifg=#E06C75 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextChar2 guifg=#E5C07B gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextChar3 guifg=#98C379 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextChar4 guifg=#56B6C2 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextChar5 guifg=#61AFEF gui=nocombine]]
vim.cmd [[highlight IndentBlanklineContextChar6 guifg=#C678DD gui=nocombine]]

require("indent_blankline").setup {
	space_char_blankline = "",
    show_current_context = true,
	
    context_highlight_list = {
        "IndentBlanklineContextChar1",
        "IndentBlanklineContextChar2",
		"IndentBlanklineContextChar3",
		"IndentBlanklineContextChar4",
		"IndentBlanklineContextChar5",
		"IndentBlanklineContextChar6",
    },

}
