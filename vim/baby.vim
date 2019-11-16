" Staging file, later to be renamed to plain .vimrc

" Serves as an entry point for the undergoing configuration refactoring,
" aiming for vim / nvim compatibility.

let g:mapleader=";"
let g:maplocalleader="'"

" Support C-c as Esc replacement:
" By default, C-c requires confirmation. Mapping to Esc would require
" changing cpoptions - see `:help c_<Esc>`. This is weird but works:
cnoremap <C-c> <C-c>
" Default C-c does not trigger InsertLeave, see `:help i_CTRL-c`.
inoremap <C-c> <Esc>

" Use Space as C-w:
nmap <Space> <C-w>
vmap <Space> <C-w>
