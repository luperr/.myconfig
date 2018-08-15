""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""Section required for Vundle package manager
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' 			"Package Manager
Plugin 'morhetz/gruvbox' 				"Colour scheme/theme
Plugin 'scrooloose/nerdtree' 			"File tree
Plugin 'Xuyuanp/nerdtree-git-plugin' 	"Git flags for nerdTree file tree
Plugin 'tpope/vim-fugitive' 			"A git wrapper
Plugin 'vim-syntastic/syntastic' 		"syntax highlighting for a ton of languages
Plugin 'vim-airline/vim-airline'		"Nifty status bar
Plugin 'vim-airline/vim-airline-themes'	"Themes for that nifty status bar
Plugin 'Valloric/YouCompleteMe'			"Code completion

call vundle#end()           
filetype plugin indent on   
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""The basics
syntax on
set number
set smartindent
set tabstop=4
set tabstop=4
set shiftwidth=4
set showcmd
set lazyredraw
set foldenable
"""Gruvbox settings for theme
let g:airline_theme='gruvbox'
set background=dark
colorscheme gruvbox
"""NERDTree settings
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exist("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
"""syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wp = 0
"""
