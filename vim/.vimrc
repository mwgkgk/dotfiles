" vim: foldmethod=marker foldlevel=0

filetype plugin indent on
syntax on
set encoding=utf-8
scriptencoding utf-8

let g:mapleader=";"
let g:maplocalleader="'"

augroup vimrc
    autocmd!
augroup END

" No backup
set nobackup
set nowritebackup
set noswapfile
set viminfo='1000,:0,<0,@0,f1,/0

" Sessions :
set sessionoptions-=options
set sessionoptions-=localoptions
set sessionoptions-=buffers
" autocmd vimrc SessionLoadPost * tabdo exe 'windo exe "normal zz"'

" Undo
set undodir=~/.vim/undo
set undofile

" Search
set ignorecase
set smartcase
set infercase
set hlsearch
set incsearch
set wrapscan

" Interface
set ruler
set scrolloff=5
set mouse=a
set number
set cursorline
autocmd vimrc WinEnter * setlocal cursorline
autocmd vimrc WinLeave * setlocal nocursorline
set colorcolumn=80

" Wrap h l normal
set whichwrap+=h,l

" Matching brackets :
set showmatch
set matchtime=2
let g:loaded_matchparen=1

" No redraw when executing macros :
set lazyredraw

" Backspace :
set backspace=indent,eol,start

" No bells, please!
set noerrorbells visualbell t_vb=
autocmd vimrc GUIEnter * set visualbell t_vb=

" Wildmenu :
set wildmenu
set wildmode=longest,list:longest
set wildignore=*.o,*~,*.pyc,*.jpg,*.jpeg,*.JPG,*.png,*.xcf,*.gif,*.bmp,*.pdf,*.beam,*.ibc

" Folding
set foldmethod=indent
set foldlevel=99

" Buffers
set switchbuf=useopen,usetab
set noequalalways

" Splits :
set splitright
set splitbelow

" Wrapping & indent
set autoindent
set copyindent
set wrap
set linebreak
set nocindent
set cinoptions+=g1,h1
set breakindent
autocmd vimrc BufRead,BufNewFile *.marko setfiletype html
autocmd vimrc Filetype markdown,python setlocal tw=79
autocmd vimrc Filetype html,htmldjango setlocal tw=0
autocmd vimrc BufNewFile,BufRead *.r2,*.r3,*.rbl,*.reb,*.red setfiletype rebol
autocmd vimrc BufNewFile,BufRead *.ipkg setfiletype idris
autocmd vimrc Filetype ocaml setlocal commentstring=(*%s*)

" Whitespace
set tabstop=4
set softtabstop=0
set shiftwidth=4
set expandtab

" Show invisibles :
set list
set listchars=tab:▸\ ,eol:¬


" Make

" TODO Needs more work. Breaks on not being able to create tmp file?
set makeprg=test\ -f\ Makefile\ &&\ make\ \\\|\\\|\ make\ -C\ ..  

set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
" Shift-F9 to make (TODO remove when makeprg works with dwm)
map [18;2~ :make<Return>:copen<Return>
map <F9> :terminal make<CR>

autocmd vimrc Filetype java setlocal makeprg=javac\ %

" Making vim look for tags in parent directories :
set tags=./tags;~

" Completion
set complete=.,b,u,]
set completeopt=menu
set pumheight=5
set iskeyword+=-
autocmd vimrc InsertEnter * set noignorecase
autocmd vimrc InsertLeave * set ignorecase

" Omni :
" set omnifunc=syntaxcomplete#Complete

" Only highlight syntax on the first 200 columns:
set synmaxcol=200

" Fix markdown
hi clear markdownError
hi link markdownError Normal
hi clear markdownCode
hi link markdownCode Normal
hi clear markdownCodeBlock
hi link markdownCodeBlock Normal
hi clear markdownItalic
hi link markdownItalic Normal

" GUI tweaks
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
    " set showtabline=0
endif

" Statusline
" the default statusline: %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
function! ExecutableFlagCurrentFile()
    if executable(expand('%'))
        return ' x'
    else
        return ''
    endif
endfunction

set statusline=\ %{winnr()}\ %<%{expand('%:h:t')}/%t\ %h%y%r%m%{ExecutableFlagCurrentFile()}\ %{exists('g:loaded_fugitive')?fugitive#head(6):''}\ %{bufnr()}\ %=\ %{expand('#:t')}\ %P
set laststatus=2 " Show even in last window


runtime mappings.vim
runtime commands.vim


if filereadable(glob("~/.local.vimrc")) 
    source ~/.local.vimrc
endif
