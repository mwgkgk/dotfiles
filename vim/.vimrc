" vim: foldmethod=marker foldlevel=0

" Almost done with the rafactor.

filetype plugin indent on
syntax on
set encoding=utf-8
scriptencoding utf-8

augroup vimrc
    autocmd!
augroup END

" Interface
set ruler
set scrolloff=5
set mouse=a
set number
set cursorline
autocmd vimrc WinEnter * setlocal cursorline
autocmd vimrc WinLeave * setlocal nocursorline
set colorcolumn=80

" Matching brackets :
set showmatch
set matchtime=2
let g:loaded_matchparen=1

" Wildmenu :
set wildmenu
set wildmode=longest,list:longest
set wildignore=*.o,*~,*.pyc,*.jpg,*.jpeg,*.JPG,*.png,*.xcf,*.gif,*.bmp,*.pdf,*.beam,*.ibc

" Wrapping & indent
set autoindent
set copyindent
set wrap
set linebreak
set nocindent
set cinoptions+=g1,h1
set breakindent

autocmd vimrc BufRead,BufNewFile *.marko setfiletype html
autocmd vimrc BufNewFile,BufRead *.r2,*.r3,*.rbl,*.reb,*.red setfiletype rebol
autocmd vimrc BufNewFile,BufRead *.ipkg setfiletype idris

" Make

" TODO Needs more work. Breaks on not being able to create tmp file?
set makeprg=test\ -f\ Makefile\ &&\ make\ \\\|\\\|\ make\ -C\ ..  

set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
" Shift-F9 to make (TODO remove when makeprg works with dwm)
map [18;2~ :make<Return>:copen<Return>
map <F9> :terminal make<CR>

" Making vim look for tags in parent directories :
set tags=./tags;~

" Completion
set complete=.,b,u,]
set completeopt=menu
set pumheight=5
set iskeyword+=-
autocmd vimrc InsertEnter * set noignorecase
autocmd vimrc InsertLeave * set ignorecase

runtime settings.vim
runtime commands.vim
runtime mappings.vim


if filereadable(glob("~/.local.vimrc")) 
    source ~/.local.vimrc
endif
