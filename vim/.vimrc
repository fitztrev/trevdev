" Vundle
set nocompatible
filetype off
set rtp+=~/trevdev/vim/bundle/vundle/
call vundle#rc()
"filetype plugin indent on
filetype plugin on
Bundle 'gmarik/vundle'

	" My Bundles
	Bundle 'Lokaltog/vim-easymotion'
	Bundle 'Lokaltog/powerline'
	Bundle 'kien/ctrlp.vim'
	Bundle 'scrooloose/nerdtree'
	Bundle 'godlygeek/tabular'
	Bundle 'vim-scripts/localvimrc'
	"Bundle 'flazz/vim-colorschemes'
	"Bundle 'altercation/vim-colors-solarized'

	Bundle 'taglist.vim'

" General Settings
syntax on
set autoindent
set ts=4
set sw=4
set title
set visualbell
set ignorecase
set hlsearch
set incsearch
set autoread
set nobackup
set nowb
set noswapfile

autocmd BufEnter *.less set syn=css
autocmd BufEnter .bash_custom set syn=sh

" Key mappings
	" Smarter way to move btw windows
	map <C-j> <C-W>j
	map <C-k> <C-W>k
	map <C-h> <C-W>h
	map <C-l> <C-W>l

	" Easily resize windows with just + or - keys
	map + <C-W>+
	map - <C-W>-

	nore ; :
	imap jj <Esc>

	map  <F1> <ESC>:wall<CR>
	imap <F1> <ESC>:wall<CR>

	set pastetoggle=<F2>

	nnoremap <F3> :set hlsearch!<CR>

	map  <F4> <ESC>:set invnumber<CR>
	imap <F4> <ESC>:set invnumber<CR>

	nnoremap <F6> :call ToggleMouse()<CR>
	function! ToggleMouse()
		if &mouse == 'a'
			set mouse=
			echo "Mouse usage disabled"
		else
			set mouse=a
			echo "Mouse usage enabled"
		endif
	endfunction

" Plugins
	" Nerd Tree
	nmap <C-n> :NERDTreeToggle<CR>
	let NERDTreeDirArrows=0
	" Quit nerdtree if it's the last open
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

	" Taglist plugin
	map <F5> <ESC>:TlistToggle<CR>
	imap <F5> <ESC>:TlistToggle<CR>
	let tlist_php_settings = 'php;c:class;f:function'
	let Tlist_Use_Right_Window = 1

	" .lvimrc
	let g:localvimrc_sandbox=0
	let g:localvimrc_ask=0

	" Ctrl P
	set runtimepath^=~/trevdev/vim/bundle/ctrlp.vim
	let g:ctrlp_max_height = 20
	let g:ctrlp_use_caching = 1
	let g:ctrlp_clear_cache_on_exit = 0
	let g:ctrlp_show_hidden = 1
	"nnoremap <c-p> :CtrlP /var/www<cr> "Can be used to override default base dir

	" Powerline
	set laststatus=2
	set encoding=utf-8
	set rtp+=~/trevdev/vim/bundle/powerline/powerline/bindings/vim
	set t_Co=256
	let g:Powerline_symbols = "fancy"

	" Taglist
	"let loaded_taglist=1 " disable taglist

" Color scheme
