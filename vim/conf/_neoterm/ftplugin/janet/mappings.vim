" ||
" || REPL control
" ||

" Run repl
nnoremap <buffer> <silent> <LocalLeader><LocalLeader> :T jpm-m repl<CR>

" ||
" || Send
" ||

" Use forms instead of lines:
nmap <silent> <buffer> X <Plug>(neoterm-repl-send)af

" Call atom under cursor
nnoremap <silent> <buffer> <C-x><C-x> :silent T (<C-r><C-w>)<CR>
" Send atom under cursor
nnoremap <silent> <buffer> <C-x>x :silent T <C-r><C-w><CR>

nnoremap <buffer> <LocalLeader>X :TREPLSendLine<CR>
nnoremap <buffer> <Leader>X :TREPLSendLine<CR>

nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)<Plug>(sexp_outer_top_list)

" Does not work
nnoremap <buffer> <LocalLeader>l :silent T (require "<C-r>=expand('%:p')<CR>")<CR>

" ||
" || Docs
" ||

nnoremap <buffer> <C-g> :silent T (doc <C-r><C-w>)<CR>
