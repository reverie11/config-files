
"""""""""""""""" Key binding """"""""""""""""
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
" for c language
	:nnoremap <Leader>8 :w<CR>:!valgrind ./a.out<CR>
	:nnoremap <Leader>1 :w<CR>:!gcc %<CR>
	:nnoremap <Leader>2 :w<CR>:!g++ -std=c++20 %<CR>
	:nnoremap <Leader>3 :w<CR>:!make all<CR>
	:nnoremap <Leader>5 :w<CR>:!g++ -g -std=c++20 %<CR>
	"open terminal and compile a.out
	:nnoremap <Leader>0 <C-w>s<C-w>w:te<CR>irr<CR>
"vim
	:nnoremap <Leader>n :tabnew<CR>
	:nnoremap <Leader>m :tabclose<CR>
	:inoremap ;; <Esc>A;
"tagbar
	:nnoremap <Leader>t :TagbarOpenAutoClose<CR>
	:nnoremap <Leader>l	<C-w>T 
"nerdtree
	:nnoremap <C-t> :NERDTreeToggle<CR>
	:nnoremap <C-f> :NERDTreeFocus<CR>
"telescope
	:nnoremap <leader>ff <cmd>Telescope find_files<cr>
"alpha
	:nnoremap <Leader>a :Alpha<cr>
"buffer
	":nnoremap <Leader>hn :bn<cr>
	":nnoremap <Leader>p :bp<cr> 
	":nnoremap <Leader>d :bd<cr>
"disable syntax checking
	:nnoremap <Leader>D :call CocAction('diagnosticToggle')<CR> 
"Render Markdown
	:nnoremap <Leader>R :RenderMarkdown toggle<CR>
"ctags
	:nnoremap <Leader>] <C-]>
"
"""""""""""""" VIM appearance """"""""""""""""
:syntax on
:set encoding=utf-8
:set number
:set relativenumber
:set clipboard=unnamedplus
":set colorcolumn=80

:set autoindent 
:set smartindent
:set cursorline

"deepskyblue
":autocmd InsertEnter * highlight CursorLine guibg=#005faf guifg=fg
"blue violet
":autocmd InsertLeave * highlight CursorLine guibg=#5f00ff guifg=fg
:set termguicolors

:set shiftwidth=4
:set tabstop=4
:set softtabstop=4

:set smarttab
:set mouse=a
:set noswapfile 

"""""""""""""""" PLUGINS """"""""""""""""
call plug#begin()
	Plug 'tribela/vim-transparent'
	"theme airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	"parentheses
	Plug 'jiangmiao/auto-pairs'
	Plug 'https://github.com/mrjones2014/nvim-ts-rainbow'

	"nerdtree
	Plug 'preservim/nerdtree'

	"treesitter
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}	

	"theme colorscheme
	Plug 'relastle/bluewery.vim'  
	Plug 'rmehri01/onenord.nvim', { 'branch': 'main' }
	"Plug 'rafi/awesome-vim-colorschemes'
	Plug 'Mofiqul/dracula.nvim'
	Plug 'tiagovla/tokyodark.nvim'
	Plug 'sainnhe/gruvbox-material'
	Plug 'ellisonleao/gruvbox.nvim'
		
	Plug 'majutsushi/tagbar'

	"tmux-vim
	Plug 'christoomey/vim-tmux-navigator'

	"mason 
	Plug 'williamboman/mason.nvim'
	Plug 'williamboman/mason-lspconfig.nvim'

	"coc autocompletion
	Plug 'neovim/nvim-lspconfig'
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	"indentation
	Plug 'lukas-reineke/indent-blankline.nvim'

	"debugger
	Plug 'mfussenegger/nvim-dap'
	Plug 'nvim-neotest/nvim-nio'
	Plug 'rcarriga/nvim-dap-ui'

	"Render Markdown
 	Plug 'echasnovski/mini.nvim', { 'branch': 'stable' }
	Plug 'MeanderingProgrammer/render-markdown.nvim'

call plug#end()


"""""""""""""""" lua interface """"""""""""""""
:lua require("custom/plugins")
:lua require("custom/mappings")
:lua require("custom/lspconfig")
:lua require("mason-config")
:lua require("treesitter-config")
:lua require("packer-plugins")
:lua require("alpha-config")
:lua require("telescope-config")
:lua require("dap-config")
:lua require("rendermarkdown")

"""""""""""""""" airline custom """"""""""""""""
:let g:airline_powerline_fonts=1
":let g:airline_theme='base16_gruvbox_dark_medium'
:let g:airline_theme='base16_nord'
":let g:airline_theme='onedark'
:let g:airline_luna_bd = 'dark'
:let g:airline#extensions#tabline#enabled = 1
:let g:python3_host_prog = '/usr/bin/python3'
:let g:airline_left_sep = ''
:let g:airline_left_alt_sep = ''
:let g:airline_right_sep = ''
:let g:airline_right_alt_sep = ''
:let g:airline_detect_modified=1
:let g:airline#extensions#branch#enabled = 1
:let g:airline_focuslost_inactive = 0
:let g:airline#extensions#capslock#enabled = 1

:let g:loaded_perl_provider = 0
:let g:NERDTreeNodeDelimiter = "\u00a0"
"""""""""""""""" color theme """"""""""""""""
":colorscheme gruvbox-material
:colorscheme onenord
"""""""""""""""" in runtime """"""""""""""""

