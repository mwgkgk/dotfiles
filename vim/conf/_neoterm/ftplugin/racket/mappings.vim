" ||
" || Eval
" ||

" Use forms instead of lines:
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)af

nnoremap <buffer> <LocalLeader>l :silent T ,load "<C-r>=expand('%')<CR>"<CR>

" ||
" || Docs
" ||

nnoremap <buffer> g<C-g> :silent T ,doc <C-r><C-w><CR>
nnoremap <buffer> <C-g> :silent T ,describe <C-r><C-w><CR>
