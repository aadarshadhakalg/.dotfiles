set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'dart-lang/dart-vim-plugin'

Plug 'vimsence/vimsence'

call plug#end()
let g:coc_disable_startup_warning = 1

filetype plugin indent on    " required

" custom setting
set mouse=a
set number
set encoding=utf-8
set backspace=indent,eol,start
set cursorline
set guioptions=
set splitbelow
set termsize=10x0
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
syntax on



" open NERDTree automatically when vim starts up on opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif


if isdirectory(argv()[0])
	autocmd FileType python map <F5> :terminal python3 manage.py runserver
	autocmd FileType dart map <F5> :terminal dart main.dart
else
	autocmd FileType python map <F5> :terminal python %
	autocmd FileType dart map <F5> :terminal dart %
endif


map <C-t> : terminal<CR>

map <C-b> : NERDTreeToggle<CR>


" For Auto Bracket Closing"

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR};<ESC>O
