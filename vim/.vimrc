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
	Bundle 'tomtom/tcomment_vim'
	Bundle 'airblade/vim-gitgutter'
	Bundle 'scrooloose/syntastic'
	Bundle 'groenewege/vim-less'
	Bundle 'tpope/vim-fugitive'
	Bundle 'digitaltoad/vim-jade'
	Bundle 'editorconfig/editorconfig-vim'
	Bundle 'xsbeats/vim-blade'
	Bundle 'kchmck/vim-coffee-script'
	Bundle 'vim-scripts/applescript.vim'
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
set relativenumber
set modelines=2
set backspace=indent,eol,start
"set mouse=a

autocmd BufNewFile,BufEnter *.jade set ft=jade
autocmd BufNewFile,BufEnter *.blade.php set ft=blade
autocmd BufNewFile,BufEnter *.less set ft=less
autocmd BufNewFile,BufEnter *.applescript set ft=applescript
autocmd BufNewFile,BufEnter .bash_custom set syn=sh
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd BufNewFile,BufRead README set syntax=markdown

" Key mappings
	let mapleader = ","

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

	map  <F4> <ESC>:call ToggleNumbers()<CR>
	imap <F4> <ESC>:call ToggleNumbers()<CR>
	function! ToggleNumbers()
		if &relativenumber == 1
			set number
			:GitGutterEnable
		elseif &number == 1
			set nonumber
			:GitGutterDisable
		elseif &number == 0 && $relativenumber == 0
			set relativenumber
			:GitGutterEnable
		endif
	endfunction

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

" Colors
	" Needed for Solarized colors to work correctly on local Mac
	set background=light

	highlight Search ctermfg=White ctermbg=Red
	highlight LineNr ctermfg=10

" Plugins
	" Nerd Tree
	nmap <C-n> :NERDTreeToggle<CR>
	let NERDTreeDirArrows=0
	let NERDTreeShowHidden=1
	" Quit nerdtree if it's the last open
	autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

	" Taglist
	if !executable('exuberant-ctags')
		let loaded_taglist=1 " disable taglist
	endif
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

	" Git Gutter
	highlight clear SignColumn
