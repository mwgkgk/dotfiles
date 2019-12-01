" vim: foldmethod=marker foldlevel=0

" Almost done with the refactor.

filetype plugin indent on
syntax on
set encoding=utf-8
scriptencoding utf-8

augroup vimrc
    autocmd!
augroup END

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
autocmd vimrc InsertEnter * set noignorecase
autocmd vimrc InsertLeave * set ignorecase

runtime settings.vim
runtime commands.vim
runtime mappings.vim


if filereadable(glob("~/.local.vimrc")) 
    source ~/.local.vimrc
endif
