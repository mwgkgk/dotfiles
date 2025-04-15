" ||
" || Repl
" ||

" Debug mode
nnoremap <silent> <buffer> <LocalLeader><LocalLeader> :T pil +<CR>

" Send
nnoremap <silent> <buffer> <Leader>r :T pil <C-r>=expand('%')<CR> -bye<CR>

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

nnoremap <buffer> <LocalLeader>l :silent T (load "<C-r>=expand('%')<CR>"<CR>)

nmap <buffer> <Leader>x <Plug>(neoterm-repl-send)<Plug>(sexp_outer_top_list)

" ||
" || Docs
" ||

nnoremap <buffer> <C-g><C-g> :silent T (show '<C-r><C-w>)<CR>
nnoremap <buffer> <C-g>g :silent T (doc '<C-r><C-w>)<CR>
