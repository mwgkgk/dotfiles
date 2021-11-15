" ||
" || Repl
" ||

nnoremap <buffer> <LocalLeader>gg :silent above T racket<CR>

" ||
" || Eval
" ||

" TODO Accept count
" Use forms instead of lines:
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)af

" Call atom under cursor
nnoremap <silent> <buffer> <C-x><C-x> :silent T (<C-r><C-w>)<CR>
" Send atom under cursor
nnoremap <silent> <buffer> <C-x>x :silent T <C-r><C-w><CR>

nnoremap <buffer> <LocalLeader>X :TREPLSendLine<CR>

nnoremap <buffer> <LocalLeader>l :silent T ,load "<C-r>=expand('%')<CR>"<CR>

nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)<Plug>(sexp_outer_top_list)

" ||
" || Docs
" ||

nnoremap <buffer> g<C-g> :silent T ,doc <C-r><C-w><CR>
nnoremap <buffer> <C-g> :silent T ,describe <C-r><C-w><CR>
