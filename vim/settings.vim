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
" Autocommand Group
"

augroup settings
    autocmd!
augroup END

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

" Visually wrap lines that are longer than the window width:
set wrap

" Visually break long lines at 'breakat' characters:
set linebreak

" Every wrapped line will continue visually indented:
set breakindent

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

" Copy indent  from current line when starting a new line:
set autoindent

" Use tabs if the previous line has used tabs, regardless of expandtab:
set copyindent

" Disable C-style languages indent:
set nocindent


"
"
" Interface
"

" These are necessary even with per-window cursorline, because there's no
" WinEnter for the very first window.
set cursorline
set cursorcolumn

" Only show cursorline in current window:
autocmd settings WinEnter * setlocal cursorline cursorcolumn
autocmd settings WinLeave * setlocal nocursorline nocursorcolumn

" Highlight column 80:
set colorcolumn=80

" Try zero scrolloff, to facilitate commands that rely on screen lines:
set scrolloff=0

" Display line numbers:
set number

" Enable mouse in all modes:
set mouse=a

"
"
" Wildmenu & Completion
"

" Wildmenu
set wildmenu
set wildmode=longest,list:longest
set wildignore=*.o,*~,*.pyc,*.jpg,*.jpeg,*.JPG,*.png,*.xcf,*.gif,*.bmp,*.pdf,*.beam,*.ibc

" Completion
set complete=.,b,u,]
set completeopt=menu
set pumheight=5

" Ignore case for search but not completion:
autocmd settings InsertEnter * set noignorecase
autocmd settings InsertLeave * set ignorecase

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
