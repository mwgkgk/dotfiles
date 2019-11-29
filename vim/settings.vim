" This file is part of the undergoing configuration refactor.
" See baby.vim for the entry point.

" This file contains settings for base Vim. Plugin settings can be found in
" corresponding conf/<plugin>/plugin/settings.vim files.


"
"
" UTF-8
"

set encoding=utf-8
scriptencoding utf-8

"
"
" Filetype & Syntax
"

filetype plugin indent on
syntax on

"
"
" Display
"

" No redraw when executing macros:
set lazyredraw

" Show invisibles:
set list
set listchars=tab:▸\ ,eol:¬

" No bells:
set noerrorbells 
set visualbell 
set t_vb=

" Only highlight syntax on the first 200 columns:
set synmaxcol=200

"
"
" Editing
"

" Backspace
set backspace=indent,eol,start

" Whitespace
set expandtab
set tabstop=4
set softtabstop=0
set shiftwidth=4

" Wrap h l normal
set whichwrap+=h,l

"
"
" Buffers
"

set switchbuf=useopen,usetab

"
"
" Windows
"

set splitright
set splitbelow
set noequalalways

"
"
" Statusline
"

" The default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

set statusline=\ %{winnr()}\ %<%{expand('%:h:t')}/%t\ %h%y%r%m%{helpers#executable_flag(expand('%'))}\ %{exists('g:loaded_fugitive')?fugitive#head(6):''}\ %{bufnr()}\ %=\ %{expand('#:t')}\ %P

 " Show even in last window:
set laststatus=2

"
"
" Folding
"

set foldmethod=indent
set foldlevel=99

"
"
" Search
"

set ignorecase
set smartcase
set infercase
set hlsearch
set incsearch
set wrapscan

"
"
" Undo
"

set undodir=~/.vim/undo
set undofile

"
"
" Sessions
"

set sessionoptions-=options
set sessionoptions-=localoptions
set sessionoptions-=buffers

"
"
" Backup & Restore
"

set nobackup
set nowritebackup
set noswapfile

set viminfo='1000,:0,<0,@0,f1,/0

"
"
" GUI
"

if has('gui_running')
    " Scrollbars, menu and toolbar must go:
    set guiheadroom=0
    set guioptions=a

    " Font
    " set guifont=Liberation\ Mono\ 9
    " set guifont=Fixed\ 8
    " set guifont=Anonymous\ Pro\ 10
    set noantialias
    set guifont=Hack\ 8
endif
