
:syntax on
:set encoding=utf-8
:set number
:set relativenumber
:set clipboard=unnamedplus
:set tabstop=4
:set cursorline
:set noswapfile

:let mapleader = ","
	:nnoremap <Leader>Q :qa!<CR>
	:nnoremap <Leader>q :q!<CR>
	:nnoremap <Leader>w :w<CR>
	:inoremap <Leader>j <Esc>:w<CR>
	:vnoremap <Leader>j <Esc>
" terminal 
	:tnoremap <Esc> <C-\><C-n>
	:tnoremap <Leader>, <C-\><C-n><C-w>q
	:nnoremap <Leader>, :w<CR><C-w>s<C-w>w:te<CR>i

